local builtin = require("telescope.builtin")

map = vim.keymap.set

function nmap(keym, cmd, desc)
    desc = desc or "Blank"
    map("n", keym, cmd, { desc = desc })
end

nmap("<leader>s", "<nop>", "Search")
nmap("<leader>g", "<nop>", "Git")
nmap("<leader>sf", builtin.find_files, "Search files")
nmap("<leader>sg", builtin.live_grep, "Search (grep)")
nmap("<leader>sb", builtin.buffers, "Search buffers")
nmap("<leader>sh", builtin.help_tags, "Search help")
nmap("<leader>gg", builtin.git_files, "Git files")

