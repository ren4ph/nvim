local lsp = require("lsp-zero")
map = vim.keymap.set

function nmaplsp(keym, cmd, bufnr, desc)
    local desc = desc or ""
    map("n", keym, cmd, { buffer = bufnr, remap = false, desc = desc })
end

local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

vim.api.nvim_create_autocmd("LspAttach", {
	desc = "Lsp Actions",
	callback = function(event)
		local opts = {buffer = bufnr, remap = false}

		map("n", "gd", function() vim.lsp.buf.definition() end, bufnr, "Go to definition")
		map("n", "K", function() vim.lsp.buf.hover() end, bufnr)
		map("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, bufnr)
		map("n", "<leader>vd", function() vim.diagnostic.open_float() end, bufnr)
		map("n", "[d", function() vim.diagnostic.goto_next() end, bufnr, "Go to next diagnostic")
		map("n", "]d", function() vim.diagnostic.goto_prev() end, bufnr, "Go to previous diagnostic")
		map("n", "<leader>vca", function() vim.lsp.buf.code_action() end, bufnr)
		map("n", "<leader>vrr", function() vim.lsp.buf.references() end, bufnr)
		map("n", "<leader>vrn", function() vim.lsp.buf.rename() end, bufnr)
		map("i", "<C-h>", function() vim.lsp.buf.signature_help() end, bufnr)
	end,
})

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  snippet = {
    expand = function(args)
      -- You need Neovim v0.10 to use vim.snippet
      vim.snippet.expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({}),
})

function setupLsp(name)
    name = name or "clangd"
    vim.lsp.config(name, {
        flags = {}
    })
    vim.lsp.enable(name)
end

setupLsp("clangd")
setupLsp("cpplint")
setupLsp("cpptools")
setupLsp("lua-language-server")
setupLsp("markdown-oxide")
setupLsp("markdownlint")
setupLsp("pyflakes")
setupLsp("pyright")

lsp.setup()
