return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = false,
              memoryLimit = 4096,
              disableAutomaticTypingAcquisition = true,
            },
            typescript = {
              inlayHints = { parameterNames = { enabled = "none" } },
              suggest = { completeFunctionCalls = false },
              updateImportsOnFileMove = { enabled = "never" },
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
          init_options = {
            maxTsServerMemory = 4096,
            tsserver = {
              maxTsServerMemory = 4096,
              disableAutomaticTypingAcquisition = true,
            },
          },
        },
      },
    },
  },
}
