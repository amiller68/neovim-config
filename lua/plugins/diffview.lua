return {
  -- Sidebar of changed files plus a side-by-side diff pane. Click a file in the
  -- panel to open its diff; <Tab>/<S-Tab> cycle files from the keyboard.
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      -- gd is LazyVim's "Git Diff (files)" picker and gf/gl are its lazygit
      -- history bindings, so diffview lives on gv ("view diff") instead
      { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Diff uncommitted changes" },
      { "<leader>gV", "<cmd>DiffviewFileHistory %<cr>", desc = "File history (current file)" },
      { "<leader>gD", "<cmd>DiffviewOpen HEAD~1<cr>", desc = "Diff including last commit" },
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
