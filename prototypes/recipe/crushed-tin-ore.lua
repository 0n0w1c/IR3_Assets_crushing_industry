if mods["bztin"] or mods["bztin2"] then return end

if not data.raw["item"]["tin-ore"] then return end

local recipe              = {}

recipe.type               = "recipe"
recipe.name               = "crushed-tin-ore"
recipe.category           = "basic-crushing"
recipe.icons              = {
    {
        icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/tin-ore.png",
        icon_size = 64,
        shift = { 0, -3 },
        scale = 0.4
    },
    {
        icon = "__crushing-industry__/graphics/icons/generic-crushing.png"
    }
}

recipe.allow_productivity = true
recipe.auto_recycle       = false
recipe.energy_required    = 1.2

recipe.icon_size          = 64
recipe.enabled            = true
recipe.ingredients        = { { type = "item", name = "tin-ore", amount = 1 } }
recipe.results            = {
    {
        type = "item",
        name = "crushed-tin-ore",
        amount = 1,
        extra_count_fraction = 0.5,
    },
    {
        type = "item",
        name = "tin-ore",
        amount = 1,
        probability = 0.05,
        ignored_by_stats = 1,
        ignored_by_productivity = 1,
        show_details_in_recipe_tooltip = false,
    },
    {
        type = "item",
        name = "sand",
        amount = 1,
        probability = 0.02,
        ignored_by_stats = 1,
        ignored_by_productivity = 1,
        show_details_in_recipe_tooltip = false,
    },
}
recipe.main_product       = "crushed-tin-ore"

data:extend({ recipe })

if mods["quality"] then
    local recycling = require("__quality__.prototypes.recycling")
    recycling.generate_recycling_recipe(recipe)
end
