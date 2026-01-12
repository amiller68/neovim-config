return {
  -- typescript configuration
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Use vtsls with memory limiting to prevent crashes
        vtsls = {
          -- Detect monorepo root for proper import resolution
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern("turbo.json", "pnpm-workspace.yaml")(fname)
              or require("lspconfig.util").root_pattern("package.json", "tsconfig.json")(fname)
          end,
          settings = {
            -- Disable workspace TypeScript SDK detection (can cause issues)
            vtsls = {
              autoUseWorkspaceTsdk = false,
              -- Increase memory limit for large monorepos
              memoryLimit = 4096,
              disableAutomaticTypingAcquisition = true,
            },
            typescript = {
              -- Optimize performance
              inlayHints = { parameterNames = { enabled = "none" } },
              suggest = { completeFunctionCalls = false },
              updateImportsOnFileMove = { enabled = "never" },
              -- Disable features that can cause high memory usage
              suggestionActions = { enabled = false },
              implementationsCodeLens = { enabled = false },
              referencesCodeLens = { enabled = false },
            },
            javascript = {
              inlayHints = { parameterNames = { enabled = "none" } },
              suggest = { completeFunctionCalls = false },
              updateImportsOnFileMove = { enabled = "never" },
              suggestionActions = { enabled = false },
              implementationsCodeLens = { enabled = false },
              referencesCodeLens = { enabled = false },
            },
          },
          -- Add these flags to tsserver
          init_options = {
            maxTsServerMemory = 4096,
            tsserver = {
              path = "", -- Let it find the right tsserver
              args = {"--logVerbosity", "off", "--noGetErrOnBackgroundUpdate"},
              maxTsServerMemory = 4096,
              disableAutomaticTypingAcquisition = true,
            },
          },
        },
      },
    },
  },
}