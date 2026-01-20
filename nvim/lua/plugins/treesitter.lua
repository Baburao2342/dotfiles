return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "python", "lua", "vim", "bash" },

        auto_install = false,

        highlight = {
            enable = true,
        },

        indent = {
            enable = true,
        }

    }
}
