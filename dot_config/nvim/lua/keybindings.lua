local keymap = vim.keymap

keymap.set("n", "<leader>sh", ":split<CR>", { desc = "Vertical Split" })
keymap.set("n", "<leader>sv", ":vsplit<CR>", { desc = "Horizontal Split" })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to down window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to up window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "No Highlight" })
keymap.set("n", "<leader>la", ":Lazy<CR>", { desc = "Open Lazy Plugin Manager" })
keymap.set("n", "<leader>ma", ":Mason<CR>", { desc = "Open Mason" })
