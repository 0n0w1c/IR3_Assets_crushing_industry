local recipe = {}

recipe.type = "recipe"
recipe.name = "iron-mixer"
recipe.enabled = false
recipe.ingredients = table.deepcopy(data.raw["recipe"]["assembling-machine-1"].ingredients)
recipe.results = { { type = "item", name = "iron-mixer", amount = 1 } }

data:extend({ recipe })

if mods["quality"] then
    local recycling = require("__quality__.prototypes.recycling")
    recycling.generate_recycling_recipe(recipe)
end

local technology = data.raw["technology"]["concrete"]
table.insert(technology.effects, { type = "unlock-recipe", recipe = "iron-mixer" })
