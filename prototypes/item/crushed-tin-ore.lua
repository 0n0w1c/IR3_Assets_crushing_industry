if mods["bztin"] then return end

local item_sounds         = require('__base__.prototypes.item_sounds')

local item                = {}

item.type                 = "item"
item.name                 = "crushed-tin-ore"

item.icon                 = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed.png"

item.subgroup             = "raw-resource"
item.order                = "t[tin-ore]-c[crushed]"
item.inventory_move_sound = item_sounds.resource_inventory_move
item.pick_sound           = item_sounds.resource_inventory_pickup
item.drop_sound           = item_sounds.resource_inventory_move
item.stack_size           = 100
item.weight               = 2 * kg

item.pictures             = {
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed-2.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed-3.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed-4.png",
        size = 64,
        scale = 0.5,
    },
}

data:extend({ item })
