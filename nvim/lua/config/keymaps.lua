-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
local del = vim.keymap.del

-- remove the default keybinding
del("n", "<leader>ff")

-- add new default keybinding
map(
  "n",
  "<leader>bB",
  "<cmd>Neotree buffers toggle=true position=float<cr>",
  { silent = true }
)

map(
  "n",
  "<leader>zz",
  "<cmd>Neotree source=filesystem toggle=true position=float<cr>",
  { remap = false }
)

map("n", "<leader>xd", "_d", { remap = false })

map("x", "<leader>xd", "_d", { remap = false })

map("x", "<leader>xp", "_dP", { remap = false })

map("v", "<leader>xp", "_dP", { remap = false })

-- Move Lines
map("n", "<leader>j", "<cmd>m .+1<cr>==", { desc = "Move down" })
map("n", "<leader>k", "<cmd>m .-2<cr>==", { desc = "Move up" })
map("v", "<leader>j", ":m '>+1<cr>gv=gv", { desc = "Move down" })
map("v", "<leader>k", ":m '<-2<cr>gv=gv", { desc = "Move up" })
