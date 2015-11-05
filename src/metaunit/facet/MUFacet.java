package metaunit.facet;

import com.intellij.facet.Facet;
import com.intellij.facet.FacetType;
import com.intellij.facet.FacetTypeId;
import com.intellij.openapi.module.Module;
import jetbrains.mps.idea.core.facet.MPSFacet;
import org.jetbrains.annotations.NotNull;

/**
 * @author Michael Pfurtscheller
 */
public class MUFacet extends Facet<MUFacetConfiguration> {

    public static final FacetTypeId<MUFacet> FACET_TYPE_ID = new FacetTypeId<MUFacet>("metaunit");

    public MUFacet(@NotNull FacetType facetType, @NotNull Module module, @NotNull String name, @NotNull MUFacetConfiguration configuration, Facet underlyingFacet) {
        super(facetType, module, name, configuration, underlyingFacet);
        configuration.setFacet(this);
    }

    public MPSFacet getMPSFacet() {
        return (MPSFacet) getUnderlyingFacet();
    }
}