if not (data.raw["item"]["crushed-tin-ore"] and data.raw["item"]["tin-plate"]) then return end

local recipe = table.deepcopy(data.raw["recipe"]["crushed-iron-smelting"])

if recipe then
    recipe.name           = "crushed-tin-smelting"
    recipe.localised_name = { "recipe-name.crushed-tin-smelting" }
    recipe.subgroup       = "raw-material"
    recipe.order          = "a[smelting]-b[tin-plate]-c[crushed]"
    recipe.icons          = {
        { icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-crushed.png", shift = { -12, -12 },  scale = 0.4 },
        { icon = data.raw["item"]["tin-plate"].icon,                                   draw_background = true }
    }

    recipe.ingredients    = { { type = "item", name = "crushed-tin-ore", amount = 1 } }
    recipe.results        = {
        {
            type = "item",
            name = "tin-plate",
            amount = 1
        }
    }
    recipe.main_product   = "tin-plate"

    data:extend({ recipe })

    local technology = data.raw["technology"]["ore-crushing"]
    local effect     =
    {
        recipe = "crushed-tin-smelting",
        type = "unlock-recipe"
    }

    table.insert(technology.effects, effect)
end
