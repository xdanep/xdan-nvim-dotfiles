local map = vim.keymap.set

map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

-- map("n", "<C-s>", ":split<CR>", { desc = "Split horizontally"})
-- map("n", "<C-v>", ":vsplit<CR>", { desc = "Split vertically"})

map("n", "<C-s>", ":w<CR>", { desc = "File Save" })
-- nvimtree
map("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Nvimtree Toggle window" })
