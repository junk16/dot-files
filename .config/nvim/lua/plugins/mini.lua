return {
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			-- Enable desired mini.nvim modules here
			require("mini.sessions").setup()
			-- require("mini.starter").setup()
			require("mini.pairs").setup()
			require("mini.comment").setup()
			require("mini.files").setup()
			require("mini.cursorword").setup()
			require("mini.indentscope").setup()
			require("mini.trailspace").setup()
			require("mini.surround").setup()
			require("mini.tabline").setup()
			require("mini.bufremove").setup()
			require("mini.pick").setup()
			require("mini.jump2d").setup()
			require("mini.bracketed").setup()
			require("mini.align").setup()
			require("mini.move").setup()

			-- Add more modules as neededk
			vim.api.nvim_create_user_command("Trim", function()
				MiniTrailspace.trim()
				MiniTrailspace.trim_last_lines()
			end, { desc = "Trim trailing space and last blank lines" })

			-- mini.clue setup
			local miniclue = require("mini.clue")
			miniclue.setup({
				triggers = {
					-- Leader triggers
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },

					-- `g` key
					{ mode = "n", keys = "g" },
					{ mode = "x", keys = "g" },

					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- `z` key
					{ mode = "n", keys = "z" },
					{ mode = "x", keys = "z" },

					-- `s` surround
					{ mode = "n", keys = "s" },
				},

				clues = {
					-- Enhance this by adding descriptions for <Leader> mapping groups
					miniclue.gen_clues.builtin_completion(),
					miniclue.gen_clues.g(),
					miniclue.gen_clues.marks(),
					miniclue.gen_clues.registers(),
					miniclue.gen_clues.windows(),
					miniclue.gen_clues.z(),
				},
			})
		end,
	},
}
