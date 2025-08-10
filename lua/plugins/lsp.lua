local util = require("lspconfig.util")
return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'saghen/blink.cmp',
  },
  opts = {
    servers = {
      pyright = {
        filetypes = { "python" },
        settings = {
          python = {
            -- To Specify a python path in needed (better to use a venv)
            -- pythonPath = "C:/ProgramData/Anaconda3/python.exe", --Python 3.10
            -- pythonPath = "/usr/bin/python3.11", --Linux
            analysis = {
              autoImportCompletions = true,
              autoSearchPaths = true,
              diagnosticMode = "workspace",
              typeCheckingMode = "off", -- off, basic, strict
              useLibraryCodeForTypes = true,
            },
          },
        },
      },
      gopls = {
        cmd = { "gopls" },
        filetypes = { "go", "gomod", "gowork", "gotmpl" },
        root_dir = util.root_pattern("go.work", "go.mod", ".git"),
        settings = {
          gopls = {
            completeUnimported = true,
            usePlaceholders = true,
            analyses = {
              fieldalignment = false,
              unusedparams = true,
            },
            staticcheck = false,
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              gloabls = { "vim" },
            },
            workspace = {
              checkThirdParty = false,
              maxPreload = 100000,
              preloadFileSize = 10000,
            },
            completion = {
              callSnippet = "Replace",
            },
          },
        },
      },
      htmx ={
        filetypes = { "html" },
      },
      rust_analyzer = {},
    },
    setup = {
      rust_analyzer = function()
        return true
      end,
      ruff_lsp = function ()
        require("lazyvim.util").lsp.on_attach(function (client,_)
          if client.name == "ruff_lsp" then
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
  config = function ()
    local capabilities = require('blink-cmp').get_lsp_capabilities()
    local lspconfig = require('lspconfig')
    lspconfig.lua_ls.setup{capabilities = capabilities}
    lspconfig.pyright.setup{capabilities = capabilities}
    lspconfig.gopls.setup{capabilities = capabilities}
  end
}
