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
	<appliedenergistics2:spatial_storage_cell_2_cubed>,
	<appliedenergistics2:spatial_storage_cell_16_cubed>,
	<appliedenergistics2:spatial_storage_cell_128_cubed>,
	<appliedenergistics2:storage_cell_1k>,
	<appliedenergistics2:storage_cell_4k>,
	<appliedenergistics2:storage_cell_16k>,
	<appliedenergistics2:storage_cell_64k>,
	<appliedenergistics2:fluid_storage_cell_1k>,
	<appliedenergistics2:fluid_storage_cell_4k>,
	<appliedenergistics2:fluid_storage_cell_16k>,
	<appliedenergistics2:fluid_storage_cell_64k>,
	<calculator:powercube>,
	<calculator:calculator>
];
for item in removeRecipe {
	recipes.remove(item);
}