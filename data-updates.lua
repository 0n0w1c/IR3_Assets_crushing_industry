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

require("prototypes/entity/electric-crusher")
require("prototypes/item/electric-crusher")
require("prototypes/technology/ore-crushing")

require("prototypes/entity/big-crusher")
require("prototypes/item/big-crusher")

require("prototypes/entity/iron-mixer")
require("prototypes/item/iron-mixer")
require("prototypes/recipe/iron-mixer")

require("prototypes/recipe/concrete-mix")

require("prototypes/item/glass")
require("prototypes/item/sand")
require("prototypes/item/crushed-coal")
require("prototypes/item/crushed-copper-ore")
require("prototypes/item/crushed-iron-ore")
require("prototypes/item/crushed-tin-ore")
require("prototypes/item/crushed-gold-ore")
