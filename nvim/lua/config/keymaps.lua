-- global
vim.keymap.set("n", '<C-m>', ":nohlsearch<CR>", {})

-- buffers
vim.keymap.set("n", "<C-L>", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-H>", ":bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "[b", ":bprevious<cr>", { desc = "Previous buffer" })
vim.keymap.set("n", "]b", ":bnext<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "[B", ":bfirst<cr>", { desc = "First buffer" })
vim.keymap.set("n", "]B", ":blast<cr>", { desc = "Last buffer" })
vim.keymap.set("n", "<leader><leader>", "<cmd>:e #<cr>", { desc = "Switch to other buffer" })

-- tabs
vim.keymap.set("n", "[t", ":tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "]t", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "[T", ":tabfirst<CR>", { desc = "First Tab" })
vim.keymap.set("n", "]T", ":tablast<CR>", { desc = "Last Tab" })

-- disable arrow keys in normal mode
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<left>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("n", "<right>", "<nop>")

-- telescope
local telescope = require("telescope/builtin")
vim.keymap.set("n", "<leader>ff", telescope.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", telescope.live_grep, { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", telescope.buffers, { desc = "Show buffers" })
vim.keymap.set("n", "<leader>fh", telescope.help_tags, { desc = "Show help" })

vim.keymap.set("n", "<leader>e", function()
  require("oil").toggle_float()
end, { desc = "File navigation" })
