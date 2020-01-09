import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
////
// This file handles item removals
////
var removeRecipe as IItemStack[] = [
	<minecraft:hopper>,
	<enderio:item_material:20>,
	<enderio:item_basic_capacitor>,
	<enderio:block_solar_panel>,
	<enderio:block_solar_panel:1>,
	<enderio:block_solar_panel:2>,
	<enderio:block_solar_panel:3>,
	<appliedenergistics2:energy_cell>,
	<appliedenergistics2:charger>,
	<appliedenergistics2:crank>,
	<appliedenergistics2:inscriber>,
	<appliedenergistics2:material:52>,
	<calculator:powercube>,
	<calculator:calculator>
];
for item in removeRecipe {
	recipes.remove(item);
}