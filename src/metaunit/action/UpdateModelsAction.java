package metaunit.action;

import com.intellij.facet.FacetManager;
import com.intellij.openapi.actionSystem.AnAction;
import com.intellij.openapi.actionSystem.AnActionEvent;
import com.intellij.openapi.actionSystem.LangDataKeys;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.ui.Messages;
import metaunit.facet.MUFacet;

/**
 * @author Michael Pfurtscheller
 */
public class UpdateModelsAction extends AnAction {

    @Override
    public void actionPerformed(AnActionEvent e) {
        Module module = e.getData(LangDataKeys.MODULE);
        if (module != null) {
            MUFacet muFacet = FacetManager.getInstance(module).getFacetByType(MUFacet.FACET_TYPE_ID);
            if (muFacet != null) {
                muFacet.getConfiguration().updateModels();
                Messages.showInfoMessage("Languages and dependencies have been imported.", "Models Updated");
            } else {
                Messages.showErrorDialog("MetaUnit facet is not attached", "Models Not Updated");
            }
        }
    }
}
