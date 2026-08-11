return {
  -- Sidebar of changed files plus a side-by-side diff pane. Click a file in the
  -- panel to open its diff; <Tab>/<S-Tab> cycle files from the keyboard.
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diff uncommitted changes" },
      { "<leader>gD", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Diff including last commit" },
      -- gf/gl are LazyVim's lazygit history bindings; v = "view history" instead
      { "<leader>gv", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (current file)" },
      { "<leader>gV", "<cmd>DiffviewFileHistory<cr>", desc = "File history (branch)" },
      { "<leader>gq", "<cmd>DiffviewClose<cr>", desc = "Close diffview" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = { layout = "diff3_mixed" },
      },
      file_panel = {
        listing_style = "tree",
        win_config = { position = "left", width = 35 },
      },
    },
  },
}
