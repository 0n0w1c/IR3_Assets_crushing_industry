if not (data.raw["item"]["crushed-gold-ore"] and data.raw["item"]["gold-plate"]) then return end

local recipe = table.deepcopy(data.raw["recipe"]["crushed-iron-smelting"])

if recipe then
    recipe.name           = "crushed-gold-smelting"
    recipe.localised_name = { "recipe-name.crushed-gold-smelting" }
    recipe.subgroup       = "raw-material"
    recipe.order          = "a[smelting]-b[gold-plate]-c[crushed]"
    recipe.icons          = {
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/gold-crushed.png", shift = { -12, -12 },  scale = 0.4 },
        { icon = data.raw["item"]["gold-plate"].icon,                                   draw_background = true }
    }

    recipe.ingredients    = { { type = "item", name = "crushed-gold-ore", amount = 1 } }
    recipe.results        = {
        {
            type = "item",
            name = "gold-plate",
            amount = 1
        }
    }
    recipe.main_product   = "gold-plate"

    data:extend({ recipe })

    local technology = data.raw["technology"]["ore-crushing"]
    local effect     =
    {
        recipe = "crushed-gold-smelting",
        type = "unlock-recipe"
    }

    table.insert(technology.effects, effect)
end
