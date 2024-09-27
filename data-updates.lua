
local mining_results = {
    ["tree-2"]       = { probability = 0.20, amount_min = 0, amount_max = 4 },
    ["tree-2-red"]   = { probability = 0.40, amount_min = 1, amount_max = 8 },
    ["tree-3"]       = { probability = 0.18, amount_min = 0, amount_max = 3 },
    ["tree-4"]       = { probability = 0.10, amount_min = 0, amount_max = 6 },
    ["tree-5"]       = { probability = 0.30, amount_min = 2, amount_max = 5 },
    ["tree-7"]       = { probability = 0.20, amount_min = 0, amount_max = 4 },
    ["tree-8"]       = { probability = 0.20, amount_min = 1, amount_max = 4 },
    ["tree-8-brown"] = { probability = 0.30, amount_min = 0, amount_max = 4 },
    ["tree-8-red"]   = { probability = 0.40, amount_min = 1, amount_max = 5 },
    ["tree-9"]       = { probability = 0.50, amount_min = 0, amount_max = 8 },
    ["tree-9-brown"] = { probability = 0.60, amount_min = 0, amount_max = 8 },
    ["tree-9-red"]   = { probability = 0.60, amount_min = 0, amount_max = 8 },
}

for _, tree in pairs(data.raw.tree) do
    local apple_result = { type = "item", name = "apple", probability = 0.0, amount_min = 0, amount_max = 0 }
    local apple_data = mining_results[tree.name]
    if apple_data then
        apple_result.probability = apple_data.probability
        apple_result.amount_min = apple_data.amount_min
        apple_result.amount_max = apple_data.amount_max
        if ((not tree.minable.results) and tree.minable.result) then
            tree.minable.results = { { type = "item", name = tree.minable.result, amount = tree.minable.count }, apple_result }
        else
            table.insert(tree.minable.results, apple_result)
        end
    end
end
