return {
  {
    "hrsh7th/nvim-cmp",
    enabled = false
    -- dependencies = {
    --   "hrsh7th/cmp-emoji",
    -- },
    -- ---@param opts cmp.ConfigSchema
    -- opts = function(_, opts)
    --   local cmp = require("cmp")
    --
    --   opts.window = {
    --     completion = cmp.config.window.bordered(),
    --     documentation = cmp.config.window.bordered(),
    --   }
    --
    --   opts.experimental = {
    --     ghost_text = false,
    --   }
    -- end,
  },
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = 'rafamadriz/friendly-snippets',
    version = '*',
    opts = {
      keymap = {
        preset = 'default',

        ['<Up>'] = { 'select_prev', 'fallback' },
        ['<Down>'] = { 'select_next', 'fallback' },

        ['<C-e>'] = {},

        ['<C-space>'] = { function(cmp) cmp.show({ providers = { 'snippets' } }) end },

        ['<C-n>'] = {'select_next', 'fallback'},
        ['<C-p>'] = {'select_prev', 'fallback'},
        ['<CR>'] = { 'accept', 'fallback' },
      },
      appearance = { 
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono'
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
      completion = {
        ghost_text = {
          enabled = false,
        },
      },
    },
    opts_extend = { "sources.default" },
  }
}
