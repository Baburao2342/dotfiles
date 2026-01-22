return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {},
    },
    {
        'brianhuster/live-preview.nvim',
        dependencies = {
            -- You can choose one of the following pickers
            'nvim-telescope/telescope.nvim',
            'ibhagwan/fzf-lua',
            'echasnovski/mini.pick',
            'folke/snacks.nvim',
        },
        config = function ()
            require('livepreview.config').set({
                port = 5500,
                browser = 'default',
                dynamic_root = false,
                sync_scroll = true,
                picker = "",
                address = '127.0.0.1',
            })
        end
    }
}
