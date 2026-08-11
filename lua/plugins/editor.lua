return {
  -- Inline git blame on current line. Deleted lines are shown by mini.diff's
  -- overlay instead; gitsigns dropped its always-on show_deleted option.
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 200,
      },
      -- Highlight the changed words within a changed line
      word_diff = true,
    },
    keys = {
      { "<leader>gw", "<cmd>Gitsigns toggle_word_diff<cr>", desc = "Toggle word diff" },
      { "<leader>gu", "<cmd>Gitsigns preview_hunk_inline<cr>", desc = "Preview hunk inline" },
    },
  },

  {
    "nmac427/guess-indent.nvim",
    config = function()
      require("guess-indent").setup({})
    end,
  },

  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
    },
  },
}
