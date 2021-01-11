for a,b in pairs(data.raw.tree) do
  local apple_result = {type = "item", name = "apple", probability = 0.0, amount_min = 0, amount_max = 0}
  local trees_to_add_apples_to = {
    -- {name = "tree-01", probability = 0}
    {name = "tree-02", probability = 0.2, amount_min = 0, amount_max = 4},
    {name = "tree-02-red", probability = 0.4, amount_min = 1, amount_max = 8},
    {name = "tree-03", probability = 0.18, amount_min = 0, amount_max = 3},
    {name = "tree-04", probability = 0.1, amount_min = 0, amount_max = 6},
    {name = "tree-05", probability = 0.3, amount_min = 2, amount_max = 5},
    {name = "tree-07", probability = 0.2, amount_min = 0, amount_max = 4},
    {name = "tree-08", probability = 0.2, amount_min = 1, amount_max = 4},
    {name = "tree-08-brown", probability = 0.3, amount_min = 0, amount_max = 4},
    {name = "tree-08-red", probability = 0.4, amount_min = 1, amount_max = 5},
    {name = "tree-09", probability = 0.5, amount_min = 0, amount_max = 8},
    {name = "tree-09-brown", probability = 0.6, amount_min = 0, amount_max = 8},
    {name = "tree-09-red", probability = 0.6, amount_min = 0, amount_max = 8},
  }
  for c,d in pairs(trees_to_add_apples_to) do
    if b.name == d.name then
      apple_result.probability = apple_result.probability + d.probability
      apple_result.amount_min = apple_result.amount_min + d.amount_min
      apple_result.amount_max = apple_result.amount_max + d.amount_max
      if ((not b.minable.results) and b.minable.result) then
        b.minable.results = {{type = "item", name = b.minable.result, amount = b.minable.count}, apple_result}
      else
        table.insert(b.minable.results, apple_result)
      end
    end
  end
end

--
-- table.insert(data.raw.tree["tree-01"].minable.results, {
--   {data.raw.tree["tree-01"].minable.result}, -- is this oging to work??? only time will tell
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-02"].minable.results, {
--   {data.raw.tree["tree-02"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-02-red"].minable.results, {
--   {data.raw.tree["tree-02-red"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-03"].minable.results, {
--   {data.raw.tree["tree-03"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-04"].minable.results, {
--   {data.raw.tree["tree-04"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-05"].minable.results, {
--   {data.raw.tree["tree-05"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-06"].minable.results, {
--   {data.raw.tree["tree-06"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-06-brown"].minable.results, {
--   {data.raw.tree["tree-06-brown"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-07"].minable.results, {
--   {data.raw.tree["tree-07"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-08"].minable.results, {
--   {data.raw.tree["tree-08"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-08-brown"].minable.results, {
--   {data.raw.tree["tree-08-brown"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-08-red"].minable.results, {
--   {data.raw.tree["tree-08-red"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-09"].minable.results, {
--   {data.raw.tree["tree-09"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-09-brown"].minable.results, {
--   {data.raw.tree["tree-09-brown"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- table.insert(data.raw.tree["tree-09-red"].minable.results, {
--   {data.raw.tree["tree-09-red"].minable.result},
--   {type = "item", name = "apple", probability=0.16, amount_min=0, amount_max=3}
-- })
--
-- -- data.raw.tree["tree-01"].minable.result = nil
-- -- data.raw.tree["tree-01"].minable.count = nil
-- -- data.raw.tree["tree-01"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-02"].minable.result = nil
-- -- data.raw.tree["tree-02"].minable.count = nil
-- -- data.raw.tree["tree-02"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-02-red"].minable.result = nil
-- -- data.raw.tree["tree-02-red"].minable.count = nil
-- -- data.raw.tree["tree-02-red"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-03"].minable.result = nil
-- -- data.raw.tree["tree-03"].minable.count = nil
-- -- data.raw.tree["tree-03"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-04"].minable.result = nil
-- -- data.raw.tree["tree-04"].minable.count = nil
-- -- data.raw.tree["tree-04"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-05"].minable.result = nil
-- -- data.raw.tree["tree-05"].minable.count = nil
-- -- data.raw.tree["tree-05"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-06"].minable.result = nil
-- -- data.raw.tree["tree-06"].minable.count = nil
-- -- data.raw.tree["tree-06"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-06-brown"].minable.result = nil
-- -- data.raw.tree["tree-06-brown"].minable.count = nil
-- -- data.raw.tree["tree-06-brown"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-07"].minable.result = nil
-- -- data.raw.tree["tree-07"].minable.count = nil
-- -- data.raw.tree["tree-07"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-08"].minable.result = nil
-- -- data.raw.tree["tree-08"].minable.count = nil
-- -- data.raw.tree["tree-08"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-08-brown"].minable.result = nil
-- -- data.raw.tree["tree-08-brown"].minable.count = nil
-- -- data.raw.tree["tree-08-brown"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-08-red"].minable.result = nil
-- -- data.raw.tree["tree-08-red"].minable.count = nil
-- -- data.raw.tree["tree-08-red"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-09"].minable.result = nil
-- -- data.raw.tree["tree-09"].minable.count = nil
-- -- data.raw.tree["tree-09"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-09-brown"].minable.result = nil
-- -- data.raw.tree["tree-09-brown"].minable.count = nil
-- -- data.raw.tree["tree-09-brown"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
-- --
-- -- data.raw.tree["tree-09-red"].minable.result = nil
-- -- data.raw.tree["tree-09-red"].minable.count = nil
-- -- data.raw.tree["tree-09-red"].minable.results = {
-- --   {type="item", name="wood", probability=1, amount=4},
-- --   {type="item", name="apple", probability=0.16, amount_min=0, amount_max=3}
-- -- }
