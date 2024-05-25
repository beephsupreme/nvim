return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    harpoon:setup()

    vim.keymap.set("n", "mm", function() harpoon:list():add() end, { desc = "Harpoon Mark" })
    vim.keymap.set("n", "mn", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon Toggle List" })

    vim.keymap.set("n", "mh", function() harpoon:list():select(1) end, { desc = "Harpoon Loc #1"})
    vim.keymap.set("n", "mj", function() harpoon:list():select(1) end, { desc = "Harpoon Loc #2"})
    vim.keymap.set("n", "mk", function() harpoon:list():select(1) end, { desc = "Harpoon Loc #3"})
    vim.keymap.set("n", "ml", function() harpoon:list():select(1) end, { desc = "Harpoon Loc #4"})
  end,
}
