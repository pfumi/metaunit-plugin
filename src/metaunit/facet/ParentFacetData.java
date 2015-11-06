package metaunit.facet;

import jetbrains.mps.ide.project.ProjectHelper;
import jetbrains.mps.idea.core.facet.MPSConfigurationBean;
import jetbrains.mps.idea.core.facet.MPSFacet;
import jetbrains.mps.idea.java.psiStubs.PsiJavaStubModelDescriptor;
import jetbrains.mps.idea.java.psiStubs.PsiJavaStubModelRoot;
import jetbrains.mps.persistence.DefaultModelRoot;
import jetbrains.mps.smodel.DefaultSModelDescriptor;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.persistence.ModelRoot;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * @author Michael Pfurtscheller
 */
public class ParentFacetData {

    private MPSConfigurationBean configBean;
    private MPSFacet mpsFacet;

    public ParentFacetData(MPSFacet mpsFacet) {
        this.mpsFacet = mpsFacet;
        this.configBean = mpsFacet.getConfiguration().getBean();
    }

    public void markModelSetGenOuput(String outputPath, String modelPath) {
        // Set output path
        configBean.setUseTransientOutputFolder(false);
        configBean.setUseModuleSourceFolder(false);
        configBean.setGeneratorOutputPath(outputPath);

        // mark design dir as model
        Collection<ModelRoot> modelRoots = configBean.getModelRoots();
        DefaultModelRoot modelRoot = new DefaultModelRoot();
        modelRoot.setContentRoot(modelPath);
        modelRoot.addFile(DefaultModelRoot.SOURCE_ROOTS, modelPath);
        if (!modelRoots.contains(modelRoot)) {
            modelRoots.add(modelRoot);
            configBean.setModelRoots(modelRoots);
        }
    }

    public String getGenOutputPath() {
        return configBean.getGeneratorOutputPath();
    }

    public void updateModels(final List<String> dependencies) {
        PsiJavaStubModelRoot psiJava = null;
        DefaultModelRoot defaultModel = null;
        final List<DefaultSModelDescriptor> defaultDescriptors = new ArrayList<DefaultSModelDescriptor>();

        // Default root and Java root
        for (ModelRoot root : mpsFacet.getSolution().getModelRoots()) {
            if (root instanceof PsiJavaStubModelRoot) {
                psiJava = (PsiJavaStubModelRoot)root;
            }
            if (root instanceof DefaultModelRoot) {
                defaultModel = (DefaultModelRoot)root;
            }
        }

        // permission to read/write models
        final org.jetbrains.mps.openapi.module.ModelAccess modelAccess = ProjectHelper.getModelAccess(mpsFacet.getModule().getProject());

        // do nothing if anything is null
        if (defaultModel == null || psiJava == null || modelAccess == null) {
            return;
        }

        // Get all default models
        final DefaultModelRoot defaultModelRoot = defaultModel;
        modelAccess.runReadAction(new Runnable() {
            @Override
            public void run() {
                for (SModel model : defaultModelRoot.getModels()) {
                    if (model instanceof DefaultSModelDescriptor) {
                        defaultDescriptors.add((DefaultSModelDescriptor) model);
                    }
                }
            }
        });

        // Add languages & dependencies
        final PsiJavaStubModelRoot psiJavaRoot = psiJava;
        modelAccess.executeCommand(new Runnable() {
            @Override
            public void run() {
                modelAccess.runWriteAction(new Runnable() {
                    public void run() {
                        // Add defined dependencies
                        for (SModel model : psiJavaRoot.getModels()) {
                            if (model instanceof PsiJavaStubModelDescriptor) {
                                String modelName = model.getModelName();
                                if (!dependencies.contains(modelName.substring(0, modelName.indexOf("@")))) {
                                    continue;
                                }
                                for (DefaultSModelDescriptor defaultDescriptor : defaultDescriptors) {
                                    boolean add = true;
                                    for (jetbrains.mps.smodel.SModel.ImportElement elem : defaultDescriptor.importedModels()) {
                                        if (elem.getModelReference().getModelName().equals(modelName)) {
                                            add = false;
                                            break;
                                        }
                                    }
                                    if (add) {
                                        defaultDescriptor.addModelImport(new jetbrains.mps.smodel.SModel.ImportElement(model.getReference()));
                                    }
                                }
                            }
                        }
                        // Add languages
                        Language baseLang = ModuleRepositoryFacade.getInstance().getModule("jetbrains.mps.baseLanguage", Language.class);
                        Language metaUnitLang = ModuleRepositoryFacade.getInstance().getModule("metaunit", Language.class);
                        for (DefaultSModelDescriptor defaultDescriptor : defaultDescriptors) {
                            defaultDescriptor.addLanguage(baseLang);
                            defaultDescriptor.addLanguage(metaUnitLang);
                        }
                    }
                });
            }
        });
    }

    @SuppressWarnings("Debug models")
    private String debug() {
        if (mpsFacet.getSolution() == null) {
            return null;
        }
        String debug = "--Model roots--\n";
        System.out.println();
        for (ModelRoot root : mpsFacet.getSolution().getModelRoots()) {
            debug += "name: " + root.toString();
            debug += "\npresentation: " + root.getPresentation();
            debug += "\ntype: " + root.getType();
            debug += "\n-SModels-";
            for (SModel model : root.getModels()) {
                debug += "\nModel class: " + model.getClass().getName();
                debug += "\nModel name: " + model.getModelName();
                if (model instanceof DefaultSModelDescriptor) {
                    DefaultSModelDescriptor smodel = (DefaultSModelDescriptor) model;
                    debug += "\n---->Dependencies";
                    for (jetbrains.mps.smodel.SModel.ImportElement elem : smodel.importedModels()) {
                        debug += "\nmodel: " + elem.getModelReference().toString();
                        debug += "\nname: " + elem.getModelReference().getModelName();
                        debug += "\nid: " + elem.getModelReference().getModelId();
                    }
                }
            }
            debug += "\n--------------------------";
        }
        debug += "\n---------------------------------------------------";
        return debug;
    }
}
