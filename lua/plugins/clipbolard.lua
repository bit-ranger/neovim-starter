-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {

  -- add tsserver and setup with typescript.nvim instead of lspconfig
  -- {
  --   "ojroques/nvim-osc52",
  --   opts = function(_, opts)
  --     local function copy(lines, _)
  --       require("osc52").copy(table.concat(lines, "\n"))
  --     end
  --
  --     local function paste()
  --       return { vim.fn.split(vim.fn.getreg(""), "\n"), vim.fn.getregtype("") }
  --     end
  --
  --     vim.g.clipboard = {
  --       name = "osc52",
  --       copy = { ["+"] = copy, ["*"] = copy },
  --       paste = { ["+"] = paste, ["*"] = paste },
  --     }
  --   end,
  -- },
}
