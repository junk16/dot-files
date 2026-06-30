return {
	"snacks.nvim",
	opts = {
		scroll = { enabled = false },
		dashboard = {
			preset = {
				pick = function(cmd, opts)
					return LazyVim.pick(cmd, opts)()
				end,
			},
			-- 	sections = {
			-- 		{ section = "header" },
			-- 		{ section = "keys", gap = 1, padding = 1 },
			--
			-- 		{ section = "startup" },
			-- 		{
			-- 			section = "terminal",
			-- 			cmd = "pokemon-colorscripts -r --no-title; sleep .1",
			-- 			-- cmd = "pokemon-colorscripts -n solgaleo; sleep .1",
			-- 			-- cmd = "pokemon-colorscripts -n lunala; sleep .1",
			-- 			-- cmd = "pokemon-colorscripts -n kleavor; sleep .1",
			-- 			random = 10,
			-- 			pane = 2,
			-- 			indent = 4,
			-- 			height = 30,
			-- 		},
			-- 	},
			-- },

			sections = {
				{ section = "header" },
				{
					pane = 2,
					section = "terminal",
					cmd = "echo hello",
					height = 5,
					padding = 1,
				},
				{ section = "keys", gap = 1, padding = 1 },
				{ pane = 2, icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
				{ pane = 2, icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
				{
					pane = 2,
					icon = " ",
					title = "Git Status",
					section = "terminal",
					enabled = function()
						return Snacks.git.get_root() ~= nil
					end,
					cmd = "git status --short --branch --renames",
					height = 5,
					padding = 1,
					ttl = 5 * 60,
					indent = 3,
				},
				{ section = "startup" },
			},
		},
	},
}
