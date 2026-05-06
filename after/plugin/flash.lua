local flash = require("flash")
map = vim.keymap.set

function nmap(keym, cmd, desc)
    desc = desc or "Blank"
    map("n", keym, function() cmd() end, { desc = desc })
end

nmap("<leader>ss", flash.jump, "Flash search")
nmap("<leader>sts", flash.treesitter_search, "Flash treesitter search")
nmap("<leader>stt", flash.tresitter, "Flash treesitter open")

