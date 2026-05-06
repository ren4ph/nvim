local wk = require("which-key")

wk.setup({
    win = {
        border = "single"
    },
    layout = {
        height = { min = 1, max = 30 },
        spacing = 1,
        align = "center"
    }
})

wk.add({
  { "<leader>s", group = "Search" }, -- group
  { "<leader>r", group = "Run" },
  { "<leader>g", group = "Git" },
  { "<leader>h", group = "Harpoon" }, -- hide this keymap
  { "<leader>;", group = "Winbar" }, -- proxy to window mappings
  { "<leader>b", group = "Bug" },
  { "<leader>q", group = "Write/Quit"},
  { "<leader>p", group = "Project" },
  { "<leader>st", group = "Treesitter" },
})
