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
                    null_ls.builtins.formatting.prettierd.with {
                        extra_filetypes = { 'html', 'json', 'yaml', 'markdown', 'typescript' },
                        env = { PRETTIERD_DEFAULT_CONFIG = vim.fn.expand '~/.config/nvim/utils/prettier/.prettierrc.json' },
                    },
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

    -- Provide SchemaStore for jsonls
    {
        'b0o/schemastore.nvim',
    },

    -- Preview parsed markdown
    {
        'iamcco/markdown-preview.nvim',
        cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
        build = 'cd app && yarn install',
        init = function()
            vim.g.mkdp_filetypes = { 'markdown' }
        end,
        ft = { 'markdown' },
    },

    -- Zen mode
    {
        'folke/zen-mode.nvim',
    },

    -- Highlight current code block by graying out everything else
    {
        'folke/twilight.nvim',
    },

    -- Enhancements for writing prose instead of code
    -- An example can be seen when a text softwraps in your editor but is not on actually on a different line, Pencil allows you to move your cursor so it makes sense visually
    {
        'preservim/vim-pencil',
    },

    -- Full replacement UI for messages, cmdline and popupmenu
    {
        'folke/noice.nvim',
        event = 'VeryLazy',
        opts = {
            -- add any options here
        },
        dependencies = {
            -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
            'MunifTanjim/nui.nvim',
            -- OPTIONAL:
            --   `nvim-notify` is only needed, if you want to use the notification view.
            --   If not available, we use `mini` as the fallback
            'rcarriga/nvim-notify',
        },
    },

    -- Supermaven AI code completions
    {
        'supermaven-inc/supermaven-nvim',
        config = function()
            require('supermaven-nvim').setup {}
        end,
    },
}
