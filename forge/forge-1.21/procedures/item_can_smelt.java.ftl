<#include "mcitems.ftl">
(world instanceof Level _level${cbi} && _level${cbi}.getRecipeManager().getRecipeFor(RecipeType.SMELTING, new SimpleContainer(${mappedMCItemToItemStackCode(input$item, 1)}), _level${cbi}).isPresent())