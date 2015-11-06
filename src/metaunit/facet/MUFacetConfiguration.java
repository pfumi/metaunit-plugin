package metaunit.facet;

import com.intellij.facet.FacetConfiguration;
import com.intellij.facet.ui.FacetEditorContext;
import com.intellij.facet.ui.FacetEditorTab;
import com.intellij.facet.ui.FacetValidatorsManager;
import com.intellij.openapi.components.PersistentStateComponent;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.util.InvalidDataException;
import com.intellij.openapi.util.WriteExternalException;
import com.intellij.testIntegration.TestFramework;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;

import java.util.List;

/**
 * @author Michael Pfurtscheller
 */
public class MUFacetConfiguration implements FacetConfiguration, PersistentStateComponent<MUFacetConfigProperties> {

    private MUFacetConfigProperties config = new MUFacetConfigProperties();
    private ParentFacetData configParentFacet;
    private Module module;

    private TestFramework junit4Framework;
    private TestFramework junit3Framework;

    @Override
    public FacetEditorTab[] createEditorTabs(FacetEditorContext facetEditorContext, FacetValidatorsManager facetValidatorsManager) {
        return new FacetEditorTab[]{new MUFacetConfigTab(facetEditorContext, this)};
    }

    @Override
    public void readExternal(Element element) throws InvalidDataException {
    }

    @Override
    public void writeExternal(Element element) throws WriteExternalException {
    }

    public void setFacet(MUFacet facet) {
        module = facet.getModule();
        configParentFacet = new ParentFacetData(facet.getMPSFacet());
        defaultValues();
    }

    public void defaultValues() {
        if (config.testFolderPath == null) {
            setTestFolderPath(module.getModuleFile().getParent().getCanonicalPath() + "/test");
        }
        if (config.designFolderPath == null) {
            setDesignFolderPath(module.getModuleFile().getParent().getCanonicalPath() + "/design");
        }
        if (junit3Framework == null || junit4Framework == null) {
            for (TestFramework testFramework : TestFramework.EXTENSION_NAME.getExtensions()) {
                if (testFramework.getName().equals("JUnit3")) {
                    junit3Framework = testFramework;
                } else if (testFramework.getName().equals("JUnit4")) {
                    junit4Framework = testFramework;
                }
            }
        }
    }

    public String getDesignFolderPath() {
        return config.designFolderPath;
    }

    public void setDesignFolderPath(String designFolderPath) {
        config.designFolderPath = designFolderPath;
    }

    public String getTestFolderPath() {
        return config.testFolderPath;
    }

    public void setTestFolderPath(String testFolderPath) {
        config.testFolderPath = testFolderPath;
    }

    public List<String> getTestSources() {
        return config.testSources;
    }

    public void setTestSources(List<String> testSources) {
        config.testSources = testSources;
    }

    public boolean isJunit4LibraryImported() {
        return junit4Framework.isLibraryAttached(module);
    }

    public boolean isJunit3LibraryImported() {
        return junit3Framework.isLibraryAttached(module);
    }

    public String getGenOutputPath() {
        return configParentFacet.getGenOutputPath();
    }

    public void markModelSetGenOuput() {
        configParentFacet.markModelSetGenOuput(getTestFolderPath(), getDesignFolderPath());
    }

    public void updateModels() {
        configParentFacet.updateModels(getTestSources());
    }

    @Nullable
    @Override
    public MUFacetConfigProperties getState() {
        return config;
    }

    @Override
    public void loadState(MUFacetConfigProperties state) {
        config = state;
    }
}
