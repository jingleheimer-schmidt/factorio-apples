require("__base__/prototypes/entity/demo-trees")

local appleTree = {
    type = "tree",
    name = name,
    minable = {
      result = nil,
      count = nil,
      results = {
        {type="item", name="wood", probability=1, amount=4},
        {type="item", name="apple", probability=0.16, amount_min=0, amount_max=4}
      }
    }
}

data:extend({
  appleTree
})
