if mods["bzgold2"] then return end

local item = data.raw["item"]["crushed-gold-ore"]
if not item then return end

item.icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed.png"

item.pictures = {
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
