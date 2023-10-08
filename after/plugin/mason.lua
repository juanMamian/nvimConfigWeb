require('mason').setup();
require('mason-lspconfig').setup();

function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

--Lua snip

local ls = require("luasnip");
require("luasnip.loaders.from_vscode").lazy_load();

vim.keymap.set("i", "<Tab>", function() ls.expand() end);
vim.keymap.set("i", "<S-Tab>", function() ls.jump(1) end);

--cmp

local cmp = require("cmp");


cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body);
        end
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' }
    }),
    mapping = cmp.mapping.preset.insert({
        ['<Tab>'] = cmp.mapping(function(fallback)
            if ls.expand_or_jumpable() then
                ls.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    })
})
--lspConfig

local lsp = require("lspconfig");

local lsp_defaults = lsp.util.default_config;

lsp_defaults.capabilities = vim.tbl_deep_extend("force", lsp_defaults.capabilities,
    require("cmp_nvim_lsp").default_capabilities())


lsp.lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
});
lsp.quick_lint_js.setup({});
lsp.svelte.setup({});
lsp.tsserver.setup({});
lsp.clangd.setup({});
lsp.arduino_language_server.setup({});
local arduinoPath = "/home/juan/Arduino/projs/";
local my_arduino_fqbn = {
    [arduinoPath .. "nodoLora"] = "arduino:avr:nano",
}

local DEFAULT_FQBN = "arduino:avr:uno"

lsp.arduino_language_server.setup {
    on_new_config = function(config, root_dir)
        local fqbn = my_arduino_fqbn[root_dir]
        if not fqbn then
            vim.notify(("Could not find which FQBN to use in %q. Defaulting to %q."):format(root_dir, DEFAULT_FQBN))
            fqbn = DEFAULT_FQBN
        end
        config.cmd = {
            "arduino-language-server",
            "-cli-config", "/home/juan/.arduino15/arduino-cli.yaml",
            "-fqbn", fqbn
        }
    end
}

vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float);

vim.api.nvim_create_autocmd("LspAttach", {
    desc = "LSP Actions",
    callback = function(event)
        local opts = { buffer = event.buf };
        vim.keymap.set("n", "K", '<cmd>lua vim.lsp.buf.hover()<cr>', opts);
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>F", function() vim.lsp.buf.format({ async = false, timeout_ms = 10000 }) end)
    end
});
