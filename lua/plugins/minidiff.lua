-- mini.diff, used only for its inline overlay: deleted lines render as virtual
-- lines where they used to be, and changed words are highlighted in place, so
-- you can see what you removed while still editing the buffer.
--
-- gitsigns keeps ownership of the sign column and line blame, so mini.diff's
-- own signs are turned off to avoid two plugins drawing the same gutter.
return {
  {
    "nvim-mini/mini.diff",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      {
        "<leader>go",
        function()
          require("mini.diff").toggle_overlay(0)
        end,
        desc = "Toggle diff overlay (deleted lines)",
      },
    },
    opts = {
      view = {
        -- Empty sign text keeps mini.diff out of the gutter; gitsigns draws there
        style = "sign",
        signs = { add = "", change = "", delete = "" },
        priority = 10,
      },
      -- Don't claim any of mini.diff's default mappings; gitsigns already
      -- provides hunk navigation and staging under <leader>gh
      mappings = {
        apply = "",
        reset = "",
        textobject = "",
        goto_first = "",
        goto_prev = "",
        goto_next = "",
        goto_last = "",
      },
    },
    config = function(_, opts)
      local minidiff = require("mini.diff")
      minidiff.setup(opts)

      -- Overlay is per-buffer and off by default, so turn it on as each buffer
      -- gets its diff computed
      vim.api.nvim_create_autocmd("User", {
        pattern = "MiniDiffUpdated",
        group = vim.api.nvim_create_augroup("minidiff_auto_overlay", { clear = true }),
        callback = function(args)
          local data = minidiff.get_buf_data(args.buf)
          if data and not data.overlay then
            minidiff.toggle_overlay(args.buf)
          end
        end,
      })
    end,
  },
}
