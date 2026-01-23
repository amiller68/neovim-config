return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
              memoryLimit = 8192,
              disableAutomaticTypingAcquisition = true,
            },
            typescript = {
              inlayHints = { parameterNames = { enabled = "none" } },
              suggest = { completeFunctionCalls = false },
              updateImportsOnFileMove = { enabled = "never" },
              suggestionActions = { enabled = false },
              implementationsCodeLens = { enabled = false },
              referencesCodeLens = { enabled = false },
              tsserver = {
                maxTsServerMemory = 8192,
              },
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
            maxTsServerMemory = 8192,
            tsserver = {
              maxTsServerMemory = 8192,
              disableAutomaticTypingAcquisition = true,
            },
          },
        },
      },
    },
  },
}
