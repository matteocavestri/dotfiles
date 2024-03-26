return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		cmd = { "Neogit", "DiffviewOpen" },
		config = function()
			require("neogit").setup({
				kind = "vsplit", -- opens neogit in a split
				signs = {
					-- { CLOSED, OPENED }
					section = { "", "" },
					item = { "", "" },
					hunk = { "", "" },
				},
				integrations = { diffview = true }, -- adds integration with diffview.nvim
			})
		end,
	},
}
