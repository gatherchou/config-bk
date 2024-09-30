return {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    main = "ibl",
    config = function ()
        for _, keymap in pairs({
            'zo',
            'zO',
            'zc',
            'zC',
            'za',
            'zA',
            'zv',
            'zx',
            'zX',
            'zm',
            'zM',
            'zr',
            'zR',
        }) do
            vim.api.nvim_set_keymap('n', keymap,  keymap .. '<CMD>IndentBlanklineRefresh<CR>', { noremap=true, silent=true })
        end

        require("ibl").setup {
            scope = {
                show_start = false,
            },
            -- show_current_context = false,
            -- show_current_context_start = false,
        }
    end
}
