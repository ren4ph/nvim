local builtin = require("telescope.builtin")

map = vim.keymap.set

map("n", "<leader>pf", builtin.find_files, {})
map("n", "<leader>pg", builtin.live_grep, {})
map("n", "<leader>pb", builtin.buffers, {})
map("n", "<leader>ph", builtin.help_tags, {})
map("n", "<C-p>", builtin.git_files, {})

