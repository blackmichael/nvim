-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jj", "<Esc>", { desc = "Shortcut for Esc" })

vim.keymap.set({ "n", "v" }, "<C-e>", "$", { desc = "End of line" })
vim.keymap.set({ "n", "v" }, "E", "$", { desc = "End of line" })
vim.keymap.set({ "n", "v" }, "<C-a>", "^", { desc = "Start of line" })
vim.keymap.set({ "n", "v" }, "B", "^", { desc = "Start of line" })
vim.keymap.set("i", "<C-a>", "<C-o>^", { desc = "Insert: start of line" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Insert: end of line" })

-- TODO - figure these out
local opt_right = "\x80\xfc\x08f"
local opt_left = "\x80\xfc\x08b"
vim.keymap.set({ "n", "v" }, opt_left, "b", { desc = "Backward word" })
vim.keymap.set({ "n", "v" }, opt_right, "e", { desc = "End of word" })
vim.keymap.set("i", "<M-Left>", "<C-o>b", { desc = "Insert: backward word" })
vim.keymap.set("i", "<M-Right>", "<C-o>e", { desc = "Insert: end of word" })
