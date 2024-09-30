return {
    "nvim-treesitter/nvim-treesitter",
    config = function ()
        require'nvim-treesitter.configs'.setup {
            highlight = {
                enable = true,
                disable = {"mysql", "yaml", "yml"},
            },
            indent = {
                enable = true
            }
        }
    end
}
