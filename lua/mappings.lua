require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Hop mappings
map("n", "<leader><leader>w", "<cmd>HopWord<cr>", { desc = "Hop Word" })
map("n", "<leader><leader>j", "<cmd>HopLine<cr>", { desc = "Hop Line" })
map("n", "<leader><leader>k", "<cmd>HopLine<cr>", { desc = "Hop Line" })
map("n", "<leader><leader>c", "<cmd>HopChar1<cr>", { desc = "Hop Char1" })

-- LazyGit mapping
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })
