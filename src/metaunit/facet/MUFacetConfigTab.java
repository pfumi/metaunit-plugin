package metaunit.facet;

import com.intellij.codeInsight.daemon.impl.quickfix.OrderEntryFix;
import com.intellij.execution.ExecutionBundle;
import com.intellij.facet.Facet;
import com.intellij.facet.ui.FacetEditorContext;
import com.intellij.facet.ui.FacetEditorTab;
import com.intellij.ide.util.BrowseFilesListener;
import com.intellij.ide.util.PackageChooserDialog;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.application.ModalityState;
import com.intellij.openapi.application.PathManager;
import com.intellij.openapi.fileChooser.FileChooserDescriptor;
import com.intellij.openapi.fileChooser.FileChooserDescriptorFactory;
import com.intellij.openapi.fileChooser.FileChooserFactory;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.projectRoots.ex.JavaSdkUtil;
import com.intellij.openapi.roots.ModifiableRootModel;
import com.intellij.openapi.roots.ModuleRootManager;
import com.intellij.openapi.ui.Messages;
import com.intellij.openapi.ui.TextFieldWithBrowseButton;
import com.intellij.openapi.util.io.FileUtil;
import com.intellij.openapi.vfs.LocalFileSystem;
import com.intellij.openapi.vfs.VirtualFile;
import com.intellij.psi.PsiPackage;
import com.intellij.ui.AnActionButton;
import com.intellij.ui.AnActionButtonRunnable;
import com.intellij.ui.ToolbarDecorator;
import com.intellij.ui.components.JBList;
import com.intellij.util.PathUtil;
import org.jetbrains.annotations.Nls;
import org.jetbrains.annotations.NotNull;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Michael Pfurtscheller
 */
public class MUFacetConfigTab extends FacetEditorTab {

    private final FacetEditorContext context;
    private final MUFacetConfiguration config;

    private JPanel rootPanel;
    private JButton importLibraryButton;
    private JCheckBox junit4CheckBox;
    private JCheckBox junit3CheckBox;
    private TextFieldWithBrowseButton designTextField;
    private TextFieldWithBrowseButton testTextField;
    private JPanel testSourcesPanel;
    private JBList testSourcesList;
    private JCheckBox generateDirectoriesCheckBox;
    private JCheckBox updateModelsCheckBox;
    private DefaultListModel testSourcesModel;

    public MUFacetConfigTab(FacetEditorContext context, MUFacetConfiguration config) {
        this.context = context;
        this.config = config;
        initTextFields();
        initJunitControl();
    }

    private void initTextFields() {
        // Design Folder
        initTextField(designTextField);
        designTextField.setText(config.getDesignFolderPath());

        // Test Folder
        initTextField(testTextField);
        testTextField.setText(config.getTestFolderPath());

        // Test Sources
        testSourcesModel = new DefaultListModel();
        for (String item : config.getTestSources()) {
            testSourcesModel.addElement(item);
        }
        testSourcesList.setModel(testSourcesModel);
        testSourcesPanel.add(ToolbarDecorator.createDecorator(testSourcesList).setAddAction(new AnActionButtonRunnable() {
            @Override
            public void run(AnActionButton anActionButton) {
                PackageChooserDialog packageChooser = new PackageChooserDialog(ExecutionBundle.message("choose.package.dialog.title"), context.getModule());
                packageChooser.show();
                for (PsiPackage pack : packageChooser.getSelectedPackages()) {
                    String packName = pack.getQualifiedName();
                    if (!testSourcesModel.contains(packName) && !packName.isEmpty()) {
                        testSourcesModel.addElement(packName);
                    }
                }
            }
        }).disableUpDownActions().createPanel(), BorderLayout.CENTER);
    }

    private void initTextField(final TextFieldWithBrowseButton textField) {
        FileChooserDescriptor outputPathsChooserDescriptor = FileChooserDescriptorFactory.createSingleFolderDescriptor();
        textField.addActionListener(new BrowseFilesListener(textField.getTextField(), null, null, outputPathsChooserDescriptor));
        FileChooserFactory.getInstance().installFileCompletion(textField.getTextField(), outputPathsChooserDescriptor, true, null);
    }

    private void initJunitControl()  {
        addJunitListener();
        importLibraryButton.setVisible(false);
        if (config.isJunit4LibraryImported()) {
            junit4CheckBox.setSelected(true);
            junit4CheckBox.setEnabled(false);
            junit3CheckBox.setSelected(true);
            junit3CheckBox.setEnabled(false);
        } else if (config.isJunit3LibraryImported()) {
            junit3CheckBox.setSelected(true);
            junit3CheckBox.setEnabled(false);
        }
    }

    private void addJunitListener() {
        importLibraryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (junit4CheckBox.isSelected()) {
                    ApplicationManager.getApplication().invokeLater(new Runnable() {
                        @Override
                        public void run() {
                            try {
                                OrderEntryFix.addJarToRoots(PathManager.getJarPathForClass(Class.forName("org.junit.Test")), context.getModule(), null);
                            } catch (ClassNotFoundException e1) {
                                throw new RuntimeException(e1);
                            }
                        }
                    }, ModalityState.NON_MODAL);
                    junit4CheckBox.setEnabled(false);
                    junit3CheckBox.setEnabled(false);
                    junit3CheckBox.setSelected(true);
                } else if (junit3CheckBox.isEnabled()) {
                    ApplicationManager.getApplication().invokeLater(new Runnable() {
                        @Override
                        public void run() {
                            OrderEntryFix.addJarToRoots(JavaSdkUtil.getJunit3JarPath(), context.getModule(), null);
                        }
                    }, ModalityState.NON_MODAL);
                    junit4CheckBox.setEnabled(true);
                }
                importLibraryButton.setVisible(false);
            }
        });
        ActionListener junitListener = new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (e.getSource().equals(junit4CheckBox)) {
                    toggleJunitCheckBox(junit4CheckBox.isSelected(), junit3CheckBox);
                } else if (e.getSource().equals(junit3CheckBox)) {
                    toggleJunitCheckBox(junit3CheckBox.isSelected(), junit4CheckBox);
                }
            }
        };
        junit4CheckBox.addActionListener(junitListener);
        junit3CheckBox.addActionListener(junitListener);
    }

    private void toggleJunitCheckBox(boolean toggle, JCheckBox checkBox) {
        importLibraryButton.setVisible(toggle);
        checkBox.setEnabled(!toggle);
    }

    @NotNull
    @Override
    public JComponent createComponent()  {
        return rootPanel;
    }

    @Override
    public boolean isModified() {
        // genDirsCheckBox, updateModelsCheckBox, designDirPath, testDirPath, genOutputPath
        if (generateDirectoriesCheckBox.isSelected()
                || updateModelsCheckBox.isSelected()
                || !config.getDesignFolderPath().equals(designTextField.getText())
                || !config.getTestFolderPath().equals(testTextField.getText())
                || !config.getTestFolderPath().equals(config.getGenOutputPath())) {
            return true;
        }
        // testSources
        List<String> testSources = config.getTestSources();
        if (testSourcesModel.size() == testSources.size()) {
              for (int i = 0; i < testSourcesModel.size(); i++) {
                if (!testSourcesModel.get(i).equals(testSources.get(i))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void reset() {
        config.defaultValues();
    }

    @Override
    public void disposeUIResources() {
    }

    @Nls
    @Override
    public String getDisplayName() {
        return "Config";
    }

    @Override
    public void apply() throws ConfigurationException {
        config.setTestSources(getTestSources());
        config.setDesignFolderPath(PathUtil.getCanonicalPath(designTextField.getText()));
        config.setTestFolderPath(PathUtil.getCanonicalPath(testTextField.getText()));
    }

    private List<String> getTestSources() {
        final List<String> items = new ArrayList<String>();
        for (int i = 0; i < testSourcesModel.size(); i++) {
            items.add((String) testSourcesModel.get(i));
        }
        return items;
    }

    @Override
    public void onFacetInitialized(@NotNull Facet facet) {
        // Generate Design & Test folders
        if (generateDirectoriesCheckBox.isSelected()) {
            final ModifiableRootModel model = ModuleRootManager.getInstance(context.getModule()).getModifiableModel();

            String designDirPath = designTextField.getText(), testDirPath = testTextField.getText();
            if (designDirPath.isEmpty() || testDirPath.isEmpty()) {
                Messages.showErrorDialog("An empty directory path is not allowed", "Directory Path");
                return;
            }

            File designDirFile = new File(config.getDesignFolderPath());
            File testDirFile = new File(config.getTestFolderPath());
            FileUtil.createDirectory(designDirFile);
            FileUtil.createDirectory(testDirFile);

            LocalFileSystem fileSystem = LocalFileSystem.getInstance();
            VirtualFile modulePath = context.getModule().getModuleFile().getParent();
            model.addContentEntry(modulePath).addSourceFolder(fileSystem.refreshAndFindFileByIoFile(designDirFile), false);
            model.addContentEntry(modulePath).addSourceFolder(fileSystem.refreshAndFindFileByIoFile(testDirFile), true);

            config.markModelSetGenOuput();

            ApplicationManager.getApplication().runWriteAction(new Runnable() {
                @Override
                public void run() {
                    model.commit();
                }
            });
        }
        // Update models - set correct languages & dependencies from selected test sources
        if (updateModelsCheckBox.isSelected()) {
            config.updateModels();
        }
    }
}
