
require("fusen").setup({
  save_file = vim.fn.stdpath("data") .. "/fusen_marks.json",

  mark = {
    icon = "󰍕",
    hl_group = "Special",
  },

  annotation_display = {
    mode = "eol",

    float = {
      delay = 100,
      border = "rounded",
      max_width = 60,
      max_height = 15,
    },
  },

  keymaps = {}, -- disables default mappings
})

-- KEYMAPS GO HERE
local fusen = require("fusen")

vim.keymap.set("n", "<leader>ee", fusen.add_mark, {
  desc = "Add/Edit mark",
})

vim.keymap.set("n", "<leader>ef", fusen.clear_mark, {
  desc = "Delete mark",
})

vim.keymap.set("n", "<leader>ew", fusen.toggle_mark, {
  desc = "Toggle mark",
})

vim.keymap.set("n", "<leader>et", fusen.next_mark, {
  desc = "Next mark",
})

vim.keymap.set("n", "<leader>eq", fusen.prev_mark, {
  desc = "Previous mark",
})

vim.keymap.set("n", "<leader>es", fusen.list_marks, {
  desc = "List marks",
})