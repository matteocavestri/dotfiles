-- plugins/ui/noice.lua

local ops = {
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		},
		signature = {
			enabled = false,
		},
		hover = {
			enabled = false,
		},
		progress = {
			enabled = false,
			format = "lsp_progress",
			format_done = "lsp_progress_done",
			throttle = 1000 / 30, -- frequency to update lsp progress message
			view = "mini",
		},
	},
	presets = {
		bottom_search = true,
		command_palette = true,
		long_message_to_split = true,
		inc_rename = false,
		lsp_doc_border = false,
	},
	routes = {
		{
			view = "notify",
			filter = { event = "msg_showmode" },
		},
		{
			filter = {
				event = "msg_show",
				kind = "",
				find = "written",
			},
			opts = { skip = true },
		},
	},
}

return ops
