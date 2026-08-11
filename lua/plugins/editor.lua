return {
  -- Inline git blame on current line, plus two ways to read a hunk's diff:
  -- <leader>ghv for a popup, or double-click a changed line for the same popup.
  -- LazyVim's <leader>ghp stays as-is (the inline variant, which survives edits).
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 200,
      },
    },
    keys = {
      {
        -- <leader>gp is Octo's "List PRs"; hunk actions live under <leader>gh
        "<leader>ghv",
        function()
          require("gitsigns").preview_hunk()
        end,
        desc = "View hunk (popup)",
      },
      {
        "<2-LeftMouse>",
        function()
          local gitsigns = require("gitsigns")
          local line = vim.api.nvim_win_get_cursor(0)[1]
          local on_hunk = false

          for _, hunk in ipairs(gitsigns.get_hunks(vim.api.nvim_get_current_buf()) or {}) do
            local first = hunk.added.start
            -- A pure deletion adds no lines, so its sign sits on a single row
            local last = hunk.added.count > 0 and first + hunk.added.count - 1 or first
            if line >= first and line <= last then
              on_hunk = true
              break
            end
          end

          if on_hunk then
            gitsigns.preview_hunk()
          else
            -- Nothing to preview here, so hand the click back to Neovim rather
            -- than swallowing the usual select-word-under-cursor behaviour
            vim.fn.feedkeys(vim.keycode("<2-LeftMouse>"), "n")
          end
        end,
        desc = "Preview hunk (double-click)",
      },
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
