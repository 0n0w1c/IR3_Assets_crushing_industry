local recipe = data.raw["recipe"]["crushed-copper-smelting"]

if recipe then
    recipe.icons = {
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/copper-crushed.png", shift = { -12, -12 },  scale = 0.4 },
        { icon = "__base__/graphics/icons/copper-plate.png",                              draw_background = true }
    }
end
