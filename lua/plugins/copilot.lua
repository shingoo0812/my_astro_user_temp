return {
  "zbirenbaum/copilot.lua",
  config = function()
    -- vim.g.copilot_no_tab_map = true
    -- vim.g.copilot_assume_mapped = true
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.g.copilot_filetypes = {
      ["*"] = false,
      ["javascript"] = true,
      ["typescript"] = true,
      ["lua"] = false,
      ["rust"] = true,
      ["c"] = true,
      ["c#"] = true,
      ["c++"] = true,
      ["go"] = true,
      ["python"] = true,
      ["sh"] = true,
      ["php"] = true,
    }
    require("copilot").setup {
      suggestion = { enabled = false },
      panel = { enabled = false },
    }
  end,
}
