-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


vim.keymap.del({ "n" }, "<leader>l", {})
vim.keymap.del({ "n" }, "<leader>L", {})

local map = vim.keymap.set
local opt = { silent = true }

map("n", "<leader>PL", "<cmd>:Lazy<cr>", { desc = "Lazy", silent = true })

map("n", "<leader>ft", function() Snacks.terminal() end, { desc = "Terminal (cwd)" })
map("n", "<leader>fT", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal (Root Dir)" })

if vim.fn.executable("lazygit") == 1 then
  map("n", "<leader>gG", function() Snacks.lazygit( { cwd = LazyVim.root.git() }) end, { desc = "Lazygit (Root Dir)" })
  map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit (cwd)" })
  map("n", "<leader>gL", function() Snacks.picker.git_log({ cwd = LazyVim.root.git() }) end, { desc = "Git Log (Root Dir)" })
  map("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git Log (cwd)" })
end

-- map({ "n", "v" }, "p", "pgvy", opt)

map("n", "<A-left>", "<cmd>BufferLineCyclePrev<cr>", opt)
map("n", "<A-right>", "<cmd>BufferLineCycleNext<cr>", opt)

map({ "n", "v" }, "lb", "^", opt)
map({ "n", "v" }, "lB", "0", opt)
map({ "n", "v" }, "le", "$", opt)

map("n", "dlb", "d^", opt)
map("n", "dlB", "d0", opt)
map("n", "dle", "d$", opt)

map("n", "clb", "c^", opt)
map("n", "clB", "c0", opt)
map("n", "cle", "c$", opt)

map({ "n", "v" }, "<leader>bb", function()
  Snacks.picker.buffers()
end, { desc = "Buffer" })

map({ "n", "v", "i" }, "<F1>", function()
  vim.lsp.buf.signature_help()
end, { desc = "Signature Help" })


map({ "n", "v" }, "<leader>wws", "<cmd>Trouble symbols toggle<cr>", { desc = "Symbols (Trouble)" })
-- map({ "n", "v" }, "<leader>cc", "gcc", { desc = "Toogle Comment Line" })
