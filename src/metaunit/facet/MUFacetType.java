package metaunit.facet;

import com.intellij.facet.Facet;
import com.intellij.facet.FacetType;
import com.intellij.openapi.module.JavaModuleType;
import com.intellij.openapi.module.Module;
import com.intellij.openapi.module.ModuleType;
import com.intellij.openapi.util.IconLoader;
import jetbrains.mps.idea.core.facet.MPSFacetType;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;

/**
 * @author Michael Pfurtscheller
 */
public class MUFacetType extends FacetType<MUFacet, MUFacetConfiguration> {

    public MUFacetType() {
        super(MUFacet.FACET_TYPE_ID, "metaunit", "MetaUnit", MPSFacetType.ID);
    }

    public Icon getIcon() {
        return IconLoader.findIcon("/metaunit.png");
    }

    @Override
    public MUFacetConfiguration createDefaultConfiguration() {
        return new MUFacetConfiguration();
    }

    @Override
    public MUFacet createFacet(@NotNull Module module,
                                 String name,
                                 @NotNull MUFacetConfiguration configuration,
                                 @Nullable Facet underlyingFacet) {
        return new MUFacet(this, module, name, configuration, underlyingFacet);
    }

    @Override
    public boolean isSuitableModuleType(ModuleType moduleType) {
        return moduleType instanceof JavaModuleType;
    }
    
}