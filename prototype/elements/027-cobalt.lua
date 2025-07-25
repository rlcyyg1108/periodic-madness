local PM = require("library")
data:extend({

  {
    type = "item",
    name = "pm-cobalt-blue",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/cobalt-blue.png",
    subgroup = "pm-cobalt-tm",
    order = "a",
    stack_size = 50
  },
  {
    type = "item",
    name = "pm-cobaltite",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/cobaltite.png",
    pictures =
    {
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite.png",   size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite-2.png", size = 64, scale = 0.5 },
      { filename = "__periodic-madness__/graphics/icons/ores/cobaltite-3.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-cobalt-tm",
    order = "b",
    stack_size = 400
  },
  {
    type = "item",
    name = "pm-cobalt-ore",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/ores/cobalt-ore-icon.png",
    pictures =
    {
      {filename = "__periodic-madness__/graphics/icons/ores/cobalt-ore-icon.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/ores/cobalt-ore-icon-2.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/ores/cobalt-ore-icon-3.png", size = 64, scale = 0.5 },
      {filename = "__periodic-madness__/graphics/icons/ores/cobalt-ore-icon-4.png", size = 64, scale = 0.5 },
    },
    subgroup = "pm-cobalt-tm",
    order = "c",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "pm-copper-chunk-frothing",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-chunk-frothing.png",
    category = "pm-washing",
    subgroup = "pm-cobalt-tm",
    order = "a",
    enabled = false,
    energy_required = 2,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-copper-chunk", 8),
      PM.ingredient("water", 25, "fluid"),
      PM.ingredient("pm-acidic-water", 10, "fluid")
    },
    results =
    {
      PM.product("pm-copper-froth", 5, "fluid"),
      PM.product("pm-copper-tailings", 10, "fluid")
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-copper-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "b",
    enabled = false,
    energy_required = 12,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-copper-froth", 10, "fluid"),
      PM.ingredient("pm-sand", 5),
      PM.ingredient("pm-coke", 3)
    },
    results =
    {
      PM.product("pm-copper-chunk", 2),
      PM.product_range_chance("pm-cobaltite", 0, 3, 0.69),
      PM.product("pm-cobalt-blue", 4)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cobalt-blue-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobalt-blue-seperation.png",
    category = "pm-crushing",
    subgroup = "pm-cobalt-tm",
    order = "c",
    enabled = false,
    energy_required = 3,
    ingredients =
    {
      PM.ingredient("pm-cobalt-blue", 4)
    },
    results =
    {
      PM.product("pm-cobalt-ore", 2),
      PM.product_range("pm-aluminium-ore", 0, 2)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-copper-tailings-looping",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/copper-tailings-looping.png",
    category = "pm-mixing",
    subgroup = "pm-cobalt-tm",
    order = "ca",
    enabled = false,
    energy_required = 1,
    ingredients =
    {
      PM.ingredient("pm-copper-tailings", 10, "fluid"),
      PM.ingredient("pm-acidic-water", 5, "fluid")
    },
    results =
    {
      PM.product_range("pm-copper-tailings", 2, 8, "fluid"),
      PM.product_chance("pm-copper-froth", 5, 0.7, "fluid")
    }
  } --[[@as data.RecipePrototype]],

  {
    type = "recipe",
    name = "pm-fluxed-copper-froth-seperation",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/fluxed-copper-froth-seperation.png",
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "ba",
    enabled = false,
    energy_required = 12,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-copper-froth", 5, "fluid"),
      PM.ingredient("pm-filled-flux-container", 1)
    },
    results =
    {
      PM.product("pm-copper-chunk", 1),
      PM.product_chance("pm-cobaltite", 1, 0.69),
      PM.product("pm-cobalt-blue", 4),
      PM.product_chance("pm-flux-container", 1, 0.66),
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cobalt-blue",
    energy_required = 3,
    category = "pm-moltening",
    subgroup = "pm-cobalt-tm",
    order = "ca",
    enabled = false,
    allow_productivity = true,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 6),
      PM.ingredient("pm-aluminium-plate", 12),
      PM.ingredient("pm-oxygen-gas", 24, "fluid")
    },
    results =
    {
      PM.product("pm-cobalt-blue", 6)
    }
  } --[[@as data.RecipePrototype]],
  {
    type = "recipe",
    name = "pm-cobalt-plate",
    subgroup = "pm-cobalt-tm",
    order = "d",
    category = "smelting",
    energy_required = 3.2,
    enabled = false,
    allow_productivity = true,
    ingredients = { PM.ingredient("pm-cobalt-ore", 1) },
    results = {
      PM.product("pm-cobalt-plate", 1)
    }
  },
  {
    type = "recipe",
    name = "pm-molten-cobalt",
    icon_size = 64,
    icons =
    {
      {
        icon = "__periodic-madness__/graphics/icons/fluids/molten-cobalt.png",
        icon_size = 64,
        shift = { 0, 1.5 }
      },
      {
        icon = "__periodic-madness__/graphics/icons/plates/cobalt-plate.png",
        icon_size = 64,
        scale = 0.33,
        shift = {0, -7.5}
      },
    },
    subgroup = "pm-cobalt-tm",
    order = "e",
    category = "pm-moltening",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-cobalt-plate", 10),
      PM.ingredient("steam", 50, "fluid")
    },
    results =
    {
      PM.product("pm-molten-cobalt", 5, "fluid")
    }
  },
  {
    type = "recipe",
    name = "pm-cobalt-plate-cooling",
    icon_size = 64,
    icon = "__periodic-madness__/graphics/icons/recipes/cobalt-cooling.png",
    category = "pm-coldening",
    subgroup = "pm-cobalt-tm",
    order = "f",
    energy_required = 9,
    enabled = false,
    allow_decomposition = false,
    ingredients =
    {
      PM.ingredient("pm-molten-cobalt", 5, "fluid"),
      PM.ingredient("pm-crucible", 1),
    },
    results =
    {
      PM.product("pm-cobalt-plate", 10),
      PM.product_chance("pm-crucible", 1, 0.8)
    }
  },
})
