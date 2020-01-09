import crafttweaker.item.IItemStack;
import mods.appliedenergistics2.Inscriber;

var removeRecipe as IItemStack[] = [
    <appliedenergistics2:material:13>,
    <appliedenergistics2:material:14>,
    <appliedenergistics2:material:15>,
    <appliedenergistics2:material:16>,
    <appliedenergistics2:material:17>,
    <appliedenergistics2:material:18>,
    <appliedenergistics2:material:19>,
    <appliedenergistics2:material:20>,
    <appliedenergistics2:material:22>,
	<appliedenergistics2:material:23>,
    <appliedenergistics2:material:24>
];
for item in removeRecipe {
	Inscriber.removeRecipe(item);
}