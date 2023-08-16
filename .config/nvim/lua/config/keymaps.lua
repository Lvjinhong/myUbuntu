-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local keymap = vim.keymap

keymap.set("v", "o", "i")
keymap.set("v", "i", "k")
keymap.set("v", "k", "j")
keymap.set("v", "j", "h")

keymap.set("n", "o", "i")
keymap.set("n", "i", "k")
keymap.set("n", "k", "j")
keymap.set("n", "j", "h")
keymap.set("n", "L", "$")
keymap.set("n", "J", "^")

keymap.set("v", "L", "$")
keymap.set("v", "J", "^")
