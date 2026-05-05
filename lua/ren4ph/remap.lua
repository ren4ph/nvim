vim.g.mapleader = " "

map = vim.keymap.set

function nmap(keym, command, desc)
    desc = desc or ""
    map("n", keym, command, { desc = desc })
end

function vmap(keym, command, desc)
    desc = desc or ""
    map("v", keym, command, { desc = desc })
end

function imap(keym, command, desc)
    desc = desc or ""
    map("i", keym, command, { desc = desc })
end

nmap("<leader>w", ":w!<CR>", "Write buffer to file")
nmap("<leader>qq", ":wq<CR>", "Write/quit")
nmap("<leader>q<leader>", ":w<CR>:Ex<CR>", "Write/stay in project")
nmap("<leader>qx", ":e!<CR>:q!<CR>", "Quit no save")

nmap("<leader>pv", vim.cmd.Ex, "Open project view")

vmap("J", ":m '>+1<CR>gv=gv", "Moves selection down")
vmap("K", ":m '<-2<CR>gv=gv", "Moves selection up")

nmap("J", "mzJ`z", "Appends below line to end of current line")
nmap("nn", "<C-d>zz", "Move down half page")
nmap("mm", "<C-u>zz", "Move up half page")
nmap("n", "nzzzv", "Center cursor on search next")
nmap("N", "Nzzzv", "Center cursor on search next")

nmap("<leader>y", "\"+y", "Copies to system clipboard")
vmap("<leader>y", "\"+y", "Copies to system clipboard")
nmap("<leader>Y", "\"+Y", "Copies to system clipboard")

imap("jk", "<Esc>", "Quick exit insert mode")

nmap("Q", "<nop>", "Disables accidental view all register")
nmap("<leader>f", function() vim.lsp.buf.format() end, "Format current file")

nmap("<leader>bn", "<cmd>cnext<CR>zz", "Visit next bug")
nmap("<leader>bp", "<cmd>cprev<CR>zz", "Visit prev bug")

nmap("<leader>sr", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", "Search/Replace")
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make current file executable", silent = true })






