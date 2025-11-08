if not (mods["IndustrialRevolution3Assets1"]
        and mods["IndustrialRevolution3Assets2"]
        and mods["IndustrialRevolution3Assets3"]
        and mods["IndustrialRevolution3Assets4"]
    ) then
    return
end

data:extend({
    {
        type = "recipe-category",
        name = "mixing-with-fluid"
    }
})

local recipe

require("prototypes/explosion/iron-mixer")
require("prototypes/entity/iron-mixer")
require("prototypes/item/iron-mixer")
require("prototypes/recipe/iron-mixer")

require("prototypes/explosion/electric-crusher")
require("prototypes/entity/electric-crusher")
require("prototypes/item/electric-crusher")

recipe = data.raw["recipe"]["electric-crusher"]
if mods["quality"] then
    local recycling = require("__quality__.prototypes.recycling")
    recycling.generate_recycling_recipe(recipe)
end

if settings.startup["crushing-industry-big-crusher"] and settings.startup["crushing-industry-big-crusher"].value == true then
    require("prototypes/explosion/big-crusher")
    require("prototypes/entity/big-crusher")
    require("prototypes/item/big-crusher")

    recipe = data.raw["recipe"]["big-crusher"]
    if mods["quality"] and recipe then
        local recycling = require("__quality__/prototypes/recycling")

        recipe.icon = nil
        recipe.icon_size = nil
        recipe.icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/steel-grinder.png",
                icon_size = 64,
            }
        }

        recycling.generate_self_recycling_recipe(recipe)
    end
end

if settings.startup["crushing-industry-glass"] and settings.startup["crushing-industry-glass"].value == true then
    require("prototypes/item/sand")
    require("prototypes/item/glass")

    recipe = data.raw["recipe"]["glass"]
    if mods["quality"] and recipe then
        local recycling = require("__quality__/prototypes/recycling")

        recipe.icon = nil
        recipe.icon_size = nil
        recipe.icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/glass.png",
                icon_size = 64,
            }
        }

        recycling.generate_self_recycling_recipe(recipe)
    end
end

if settings.startup["crushing-industry-coal"] and settings.startup["crushing-industry-coal"].value == true then
    require("prototypes/item/crushed-coal")
end

if settings.startup["crushing-industry-concrete-mix"] and settings.startup["crushing-industry-concrete-mix"].value == true then
    require("prototypes/recipe/concrete-mix")
end

if settings.startup["crushing-industry-ore"] and settings.startup["crushing-industry-ore"].value == true then
    require("prototypes/item/crushed-copper-ore")
    require("prototypes/item/crushed-iron-ore")

    require("prototypes/recipe/crushed-copper-smelting")
    require("prototypes/recipe/crushed-iron-smelting")

    if not (mods["secretas"] or mods["bzgold"] or mods["bzgold2"]) then
        if settings.startup["IR3-gold-ore"] and settings.startup["IR3-gold-ore"].value == true then
            require("prototypes/item/crushed-gold-ore")
            require("prototypes/recipe/crushed-gold-ore")
        end
    end

    if not (mods["bztin"] or mods["bztin2"]) then
        if settings.startup["IR3-tin-ore"] and settings.startup["IR3-tin-ore"].value == true then
            require("prototypes/item/crushed-tin-ore")
            require("prototypes/recipe/crushed-tin-ore")
        end
    end
end

local crushing_recipes = {
    { "crushed-coal",       "coal.png" },
    { "sand",               "stone.png" },
    { "crushed-iron-ore",   "iron-ore.png" },
    { "crushed-copper-ore", "copper-ore.png" },
}

for _, element in ipairs(crushing_recipes) do
    local recipe_name = element[1]
    local filename    = element[2]
    recipe            = data.raw["recipe"][recipe_name]

    if recipe then
        recipe.icon = nil
        recipe.icon_size = nil
        recipe.icons = {
            {
                icon = "__IndustrialRevolution3Assets1__/graphics/icons/64/" .. filename,
                icon_size = 64,
                shift = { 0, -3 },
                scale = 0.4
            },
            {
                icon = "__crushing-industry__/graphics/icons/generic-crushing.png"
            },
        }

        if mods["quality"] then
            local recycling = require("__quality__.prototypes.recycling")
            recycling.generate_self_recycling_recipe(recipe)
        end
    end
end
