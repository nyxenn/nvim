return {
    -- 'tpope/vim-fugitive',
    -- 'tpope/vim-rhubarb',

    -- Add indentation guides even on blank lines
    -- See `:help ibl`
    {
        'lukas-reineke/indent-blankline.nvim',
        main = 'ibl',
        opts = {
            scope = {
                enabled = true,
            },
        },
    },

    -- catppuccin
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'catppuccin'
        end,
    },

    -- Automatically close parentheses, quotes, ...
    {
        'm4xshen/autoclose.nvim',
        config = function()
            require('autoclose').setup()
        end,
    },

    -- Automatically create closing HTML tag, renames paired tag when typing
    {
        'alvan/vim-closetag',
    },

    -- Vim + tmux navigation
    -- {
    -- 	'christoomey/vim-tmux-navigator',
    -- 	lazy = false
    -- },
    --

    -- allows non-LSP sources to hook into LSP client for e.g. code actions, formatting, hover, completion
    {
        'nvimtools/none-ls.nvim',
        config = function()
            local null_ls = require 'null-ls'
            null_ls.setup {
                sources = {
                    null_ls.builtins.code_actions.refactoring,
                    null_ls.builtins.diagnostics.sqlfluff.with {
                        extra_args = { '--dialect', 'oracle' },
                    },
                    null_ls.builtins.formatting.prettierd,
                    null_ls.builtins.formatting.black,
                },
            }
        end,
    },

    -- Leetcode from inside nvim :)
    {
        'kawre/leetcode.nvim',
        build = ':TSUpdate html',
        dependencies = {
            'nvim-telescope/telescope.nvim',
            'nvim-lua/plenary.nvim',
            'MunifTanjim/nui.nvim',

            -- optional
            'nvim-treesitter/nvim-treesitter',
            'rcarriga/nvim-notify',
            'nvim-tree/nvim-web-devicons',
        },
        opts = {
            lang = 'python3',
            injector = {
                ['python3'] = {
                    before = true,
                },
            },
        },
    },

    -- zig
    {
        'ziglang/zig.vim',
    },
}
