-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move deleted text to blackhole register (from Tommy script)
vim.keymap.set({ "n", "v", "x" }, "r", '"_r', { desc = "Replace and send deleted char to blackhole register" })
vim.keymap.set({ "n", "v", "x" }, "d", '"_d', { desc = "Delete to blackhole register" })
vim.keymap.set({ "n", "v", "x" }, "c", '"_c', { desc = "Change option and send deleted strings to blackhole register" })
