return {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    config = function ()
		vim.keymap.set("n", "<leader>dfh", ":DiffviewFileHistory<cr>")
		vim.keymap.set("n", "<leader>df", ":DiffviewOpen<cr>")
		vim.keymap.set("n", "<leader>dfc", ":DiffviewClose<cr>")

		require("diffview").setup({
			file_panel = {
				win_config = {    -- See |diffview-config-win_config|
					position = "left",
					width = 40,
					win_opts = {
						number = true,
						relativenumber = true,
					},
				},
			},
			file_history_panel = {
				win_config = {    -- See |diffview-config-win_config|
					position = "left",
					width = 80,
					win_opts = {
						number = true,
						relativenumber = true,
					},
				},
			},
            keymaps = {
                file_panel = {
                    {
                        "n", "cc",
                        "<Cmd>Git commit <bar> wincmd J<CR>",
                        { desc = "Commit staged changes" },
                    },
                    {
                        "n", "ca",
                        "<Cmd>Git commit --amend <bar> wincmd J<CR>",
                        { desc = "Amend the last commit" },
                    },
                    {
                        "n", "c<space>",
                        ":Git commit ",
                        { desc = "Populate command line with \":Git commit \"" },
                    },
                },
            }

		})
    end
}
