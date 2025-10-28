if mods["bzgold"] or mods["bzgold2"] then return end

if not data.raw["resource"]["gold-ore"] then return end
if not settings.startup["crushing-industry-ore"].value == true then return end

local item_sounds         = require("__base__/prototypes/item_sounds")

local item                = {}

item.type                 = "item"
item.name                 = "crushed-gold-ore"

item.icon                 = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed.png"

item.subgroup             = "raw-resource"
item.order                = "t[gold-ore]-c[crushed]"
item.inventory_move_sound = item_sounds.resource_inventory_move
item.pick_sound           = item_sounds.resource_inventory_pickup
item.drop_sound           = item_sounds.resource_inventory_move
item.stack_size           = 100
item.weight               = 2 * kg

item.pictures             = {
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed-2.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed-3.png",
        size = 64,
        scale = 0.5,
    },
    {
        filename = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed-4.png",
        size = 64,
        scale = 0.5,
    },
}

data:extend({ item })
