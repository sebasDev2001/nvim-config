return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    local harpoon = require("harpoon")
    harpoon:setup({})

    --telescope config
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          promt_title = "Harpoon",
          finder = require("telescope.finders").new_table({
            results = file_paths,
          }),
          previewer = conf.file_previewer({}),
          sorter = conf.generic_sorter({}),
        })
        :find()
    end

    --keymaps
    -- vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
    --   { desc = "Open hardpoon window" })
    vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
      { desc = "Open hardpoon window" })
    vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end,
      {desc = "Append buffer to harpoon"})

    vim.keymap.set("n", "1", function () harpoon:list():select(1) end)
    vim.keymap.set("n", "2", function () harpoon:list():select(2) end)
    vim.keymap.set("n", "3", function () harpoon:list():select(3) end)
    vim.keymap.set("n", "4", function () harpoon:list():select(4) end)




  end,
}
