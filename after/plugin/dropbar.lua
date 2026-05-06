local dropbarapi = require("dropbar.api")

function nmap(keym, cmd, desc)
    desc = desc or ""
    map("n", keym, cmd, { desc = desc })
end

nmap("<leader>;", "<nop>", "Winbar")
nmap("<leader>;;", dropbarapi.pick, "Pick symbols")
nmap("<leader>;[", dropbarapi.goto_context_start, "Go to start of current context")
nmap("<leader>;]", dropbarapi.select_next_context, "Go to next context")
