--if true then return {}  end

local util = require("lspconfig.util")
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pyright = {
        filetypes = { "python" },
        settings = {
          python = {
            -- pythonPath = "C:/ProgramData/Anaconda3/python.exe", --Python 3.10
            -- pythonPath = "~/Anaconda3/envs/base_11/python.exe",
            pythonPath = "/usr/bin/python3.11", --Linux
            -- pythonPath = "C:/ProgramData/anaconda3/envs/env3_12/python.exe",
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
      ruff_lsp = {
        keys = {
          {
            "<leader>co",
            function()
              vim.lsp.buf.code_action({
                apply = true,
                context = {
                  only = { "source.organizeImports" },
                  diagnostics = {},
                },
              })
            end,
            desc = "Organize Imports",
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
      }
    },
    setup = {
      ruff_lsp = function ()
        require("lazyvim.util").lsp.on_attach(function (client,_)
          if client.name == "ruff_lsp" then
            client.server_capabilities.hoverProvider = false
          end
        end)
      end,
    },
  },
}
