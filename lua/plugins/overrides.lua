return {
  -- disable bufferline
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- super-tab + enter completion
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
        ["<Tab>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
          "fallback",
        },
        ["<Enter>"] = {
          function(cmp)
            if cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          LazyVim.cmp.map({ "snippet_forward", "ai_accept" }),
          "fallback",
        },
      },
    },
  },
}
