for a,b in pairs(data.raw.tree) do
  local apple_result = {type = "item", name = "apple", probability = 0.16, amount_min = 0, amount_max = 3}
  -- if b.name == ("tree-01" or "tree-02" or "tree-02-red" or "tree-03" or "tree-04" or "tree-05" or "tree-06" or "tree-06-brown" or "tree-07" or "tree-08" or "tree-08-brown" or "tree-08-red" or "tree-09" or "tree-09-brown" or "tree-09-red") then
    if not b.minable.results then
      b.minable.results = {{type = "item", name = b.minable.result, amount = b.minable.count}, apple_result}
    else
      table.insert(b.minable.results, apple_result)
    end
  -- end
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
