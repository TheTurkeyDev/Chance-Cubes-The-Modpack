/*
    Code was referenced from the SevTech: Ages mod pack. 
    https://github.com/DarkPacks/SevTech-Ages/blob/585f0f7e3302dcc197ee653f856ee904ac480441/src/scripts/crafttweaker/events/blockBreak.zs
*/
import crafttweaker.block.IBlock;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.IBlockEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

static blockHarvestDrops as WeightedItemStack[][string] = {
    "minecraft:bookshelf": [
        <minecraft:book:0>.weight(1.0),
        <minecraft:book:0>.weight(1.0),
        <minecraft:book:0>.weight(1.0),
        <minecraft:planks:0>.weight(1.0)
    ]
};

function init() {
	events.onBlockHarvestDrops(function (event as BlockHarvestDropsEvent) {
		var blockId = event.block.definition.id;
		if (event.block.meta != 0) {
			blockId += ":" ~ event.block.meta;
		}

		// Skip overrides if the block is silk touched
		if (event.silkTouch) {
			return;
		}

		var hasOverride = !isNull(blockHarvestDrops[blockId]);
		if (hasOverride) {
			for i, block in blockHarvestDrops[blockId] {
				if (i == 0) {
					event.drops = [block];
				} else {
					event.drops += block;
				}
			}
		}
	});
}