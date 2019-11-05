--data.lua

data:extend(
{
  {
    type = "recipe",
    name = "science-from-artifacts",
    results =
    {
      {type="item", name="automation-science-pack", amount="1", probability="0.75"},
      {type="item", name="logistic-science-pack",   amount="1", probability="0.6"},
      {type="item", name="chemical-science-pack",   amount="1", probability="0.5"},
      {type="item", name="military-science-pack",   amount="1", probability="0.5"},
      {type="item", name="production-science-pack", amount="1", probability="0.35"},
      {type="item", name="utility-science-pack",    amount="1", probability="0.15"},
      {type="item", name="space-science-pack",      amount="1", probability="0.01"},
    },
    ingredients =
    {
      {"alien-artifact-green", 1},
      {"alien-artifact-yellow", 1},
      {"alien-artifact-purple", 1},
      {"alien-artifact-blue", 1},
      {"alien-artifact-orange", 1},
      {"alien-artifact-red", 1},
      {type = "fluid", name = "sulfuric-acid", amount = 50},
    },
    energy_required = 60,
    enabled = "true",
    category = "crafting-with-fluid",
    subgroup = "science-pack",
    icon = "__artifacts_to_science__/graphics/icons/alien2science.png",
    icon_size = 32,
    order = "h[science-from-artifacts]",
  },
}
)

for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    table.insert(v.limitation, "science-from-artifacts")
  end
end
