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
        name = "mixing-with-fluids"
    }
})

require("prototypes/explosion/electric-crusher-explosion")
require("prototypes/entity/electric-crusher")
require("prototypes/item/electric-crusher")
require("prototypes/technology/ore-crushing")

require("prototypes/explosion/big-crusher-explosion")
require("prototypes/entity/big-crusher")
require("prototypes/item/big-crusher")

require("prototypes/explosion/iron-mixer-explosion")
require("prototypes/entity/iron-mixer")
require("prototypes/item/iron-mixer")
require("prototypes/recipe/iron-mixer")

require("prototypes/item/glass")
require("prototypes/item/sand")
require("prototypes/item/crushed-coal")
require("prototypes/item/crushed-copper-ore")
require("prototypes/item/crushed-iron-ore")
require("prototypes/item/crushed-tin-ore")
require("prototypes/item/crushed-gold-ore")

require("prototypes/recipe/concrete-mix")
require("prototypes/recipe/crushed-tin-ore")
require("prototypes/recipe/crushed-gold-ore")

local crushing_recipes = {
    { "crushed-coal",       "coal.png" },
    { "sand",               "stone.png" },
    { "crushed-iron-ore",   "iron-ore.png" },
    { "crushed-copper-ore", "copper-ore.png" },
}

for _, element in ipairs(crushing_recipes) do
    local recipe_name = element[1]
    local filename    = element[2]
    local recipe      = data.raw["recipe"][recipe_name]

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
    end
end
