return {
    -- request syntax:  https://www.jetbrains.com/help/idea/exploring-http-syntax.html
    "rest-nvim/rest.nvim",
    event = "VeryLazy",
    config = function ()
        map = vim.keymap.set
        map("n", "<leader>rr", ":Rest run<CR>")
        map("n", "<leader>rl", ":Rest last<CR>")
        map("n", "<leader>rn", ":Rest run ")
    end
}
