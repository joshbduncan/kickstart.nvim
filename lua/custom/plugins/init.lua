-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

    -- Additional lua configuration, makes nvim stuff amazing!
    { 'folke/neodev.nvim' },

    -- live markdown viewin
    { "itspriddle/vim-marked" },

    -- better notifications
    {
        "rcarriga/nvim-notify",
        config = function()
            vim.notify = require("notify")
            require("notify").setup({
                timeout = 2000,
            })
        end,
    },

    -- pretty diagnostics, references, telescope results, quickfix and location lists
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- file tree
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup({})
            vim.keymap.set("n", "<C-\\>", "<cmd> NvimTreeToggle <CR>", {})
        end,
    },

    -- filemanager
    {
        "stevearc/oil.nvim",
        opts = {},
        -- Optional dependencies
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    },
}
