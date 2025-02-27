return {
    require("plugins.treesitter"),
    require("plugins.coc"),
    require("plugins.avante"),
    {'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
            'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
        },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = {
        },
        version = '^1.0.0', -- optional: only update when a new 1.x version is released
    },
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            vim.cmd("colorscheme nightfox")
        end,
    },
    {
        "mbbill/undotree",
    },
    {
        "nvim-tree/nvim-tree.lua",  -- Replacing NERDTree with nvim-tree
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup()
            -- Add a keymap to toggle nvim-tree (similar to NERDTree)
            vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { silent = true })
        end,
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end,
    }
}
