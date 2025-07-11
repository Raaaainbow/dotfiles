local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<M-h>", function() harpoon:list():select(1) end, {remap=true})
vim.keymap.set("n", "<M-j>", function() harpoon:list():select(2) end, {remap=true})
vim.keymap.set("n", "<M-k>", function() harpoon:list():select(3) end, {remap=true})
vim.keymap.set("n", "<M-l>", function() harpoon:list():select(4) end, {remap=true})

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
