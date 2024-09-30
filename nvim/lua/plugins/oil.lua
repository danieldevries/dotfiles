return {
  {
    "stevearc/oil.nvim",
    --dependencies = { "nvim-tree/nvim-webdevicons" },
    config = function()
      require("oil").setup({
        keymaps = {
          ["g?"] = "action.show_help",
          ["<CR>"] = "actions.select",
          ["<C-\\>"] = "action.select_vsplit",
          ["<C-Enter>"] = "action.select_split",
          ["<C-t>"] = "actions.select_tab",
          ["<C-p>"] = "action.preview",
          ["<C-c>"] = "action.close",
          ["<C-r>"] = "action.refresh",
          ["-"] = "actions.parent",
          ["_"] = "actions.open_cwd",
          ["`"] = "actions.cd",
          ["~"] = "actions.tcd",
          ["gs"] = "actions.change_sort",
          ["gx"] = "actions.open_external",
          ["g."] = "actions.toggle_hidden",
        },
        use_default_keymaps = false,
        view_options = {
          show_hidden = true
        },
        float = {
        },
      })
    end
  }
}
