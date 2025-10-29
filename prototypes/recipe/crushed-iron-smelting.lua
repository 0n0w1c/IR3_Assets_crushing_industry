local recipe = data.raw["recipe"]["crushed-iron-smelting"]

if recipe then
    recipe.icons = {
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/iron-crushed.png", shift = { -12, -12 },  scale = 0.4 },
        { icon = "__base__/graphics/icons/iron-plate.png",                              draw_background = true }
    }
end
