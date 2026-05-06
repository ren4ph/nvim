local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

map = vim.keymap.set

function nmap(keym, cmd, desc)
    desc = desc or ""
    map("n", keym, cmd, { desc = desc })
end

nmap("<leader>ha", mark.add_file, "Add file to harpoon list")
nmap("<leader>hh", ui.toggle_quick_menu, "View harpoon list")

nmap("<leader>1", function() ui.nav_file(1) end, "Go to harpoon 1")
nmap("<leader>2", function() ui.nav_file(2) end, "Go to harpoon 2")
nmap("<leader>3", function() ui.nav_file(3) end, "Go to harpoon 3")
nmap("<leader>4", function() ui.nav_file(4) end, "Go to harpoon 4")


