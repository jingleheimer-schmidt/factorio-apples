
local mining_results = {
    ["tree-02"]       = { probability = 0.15, amount_min = 0, amount_max = 2 },
    ["tree-02-red"]   = { probability = 0.30, amount_min = 1, amount_max = 6 },
    ["tree-03"]       = { probability = 0.15, amount_min = 0, amount_max = 1 },
    ["tree-04"]       = { probability = 0.05, amount_min = 0, amount_max = 4 },
    ["tree-05"]       = { probability = 0.20, amount_min = 2, amount_max = 3 },
    ["tree-07"]       = { probability = 0.15, amount_min = 0, amount_max = 2 },
    ["tree-08"]       = { probability = 0.15, amount_min = 1, amount_max = 2 },
    ["tree-08-brown"] = { probability = 0.25, amount_min = 0, amount_max = 2 },
    ["tree-08-red"]   = { probability = 0.30, amount_min = 1, amount_max = 3 },
    ["tree-09"]       = { probability = 0.45, amount_min = 0, amount_max = 6 },
    ["tree-09-brown"] = { probability = 0.40, amount_min = 0, amount_max = 6 },
    ["tree-09-red"]   = { probability = 0.45, amount_min = 0, amount_max = 6 },
}

for _, tree in pairs(data.raw.tree) do
    local apple_result = { type = "item", name = "apple", probability = 0.0, amount_min = 0, amount_max = 0 }
    local apple_data = mining_results[tree.name]
    if apple_data then
        apple_result.probability = apple_data.probability / 5
        apple_result.amount_min = apple_data.amount_min
        apple_result.amount_max = apple_data.amount_max
        if ((not tree.minable.results) and tree.minable.result) then
            tree.minable.results = { { type = "item", name = tree.minable.result, amount = tree.minable.count }, apple_result }
        else
            table.insert(tree.minable.results, apple_result)
        end
    end
end
