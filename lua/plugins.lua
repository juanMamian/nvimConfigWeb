vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'EdenEast/nightfox.nvim', config = function() vim.cmd("colorscheme nightfox") end}
    use 'theprimeagen/harpoon'

    use {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig'
    };

    use {
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        dependencies = { "rafamadriz/friendly-snippets" },
    }
    use "rafamadriz/friendly-snippets"

    use {
        'hrsh7th/nvim-cmp',
        requires = {
           'hrsh7th/cmp-nvim-lsp',
           'saadparwaiz1/cmp_luasnip',
        }
    }

end)
