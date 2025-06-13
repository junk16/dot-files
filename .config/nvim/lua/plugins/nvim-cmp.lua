return {
	-- Completion plugin
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			-- "hrsh7th/cmp-nvim-lsp", -- LSP source
			-- "hrsh7th/cmp-buffer", -- Buffer source
			-- "hrsh7th/cmp-path", -- Path source
			-- "hrsh7th/cmp-cmdline", -- Command-line source
			-- "L3MON4D3/LuaSnip", -- Snippet engine
			-- "saadparwaiz1/cmp_luasnip", -- Snippet source
			"quangnguyen30192/cmp-nvim-tags",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			--
			cmp.setup({
				print("hello"),
				-- 		snippet = {
				-- 			expand = function(args)
				-- 				luasnip.lsp_expand(args.body)
				-- 			end,
				-- 		},
				-- 		mapping = cmp.mapping.preset.insert({
				-- 			["<Tab>"] = cmp.mapping.select_next_item(),
				-- 			["<S-Tab>"] = cmp.mapping.select_prev_item(),
				-- 			["<CR>"] = cmp.mapping.confirm({ select = true }),
				-- 		}),
				-- 		sources = cmp.config.sources({
				-- 			{ name = "nvim_lsp" },
				-- 			{ name = "luasnip" },
				-- 			{ name = "buffer" },
				-- 			{ name = "path" },
				-- 		}),
				sources = {
					name = "tags",
					option = {
						-- this is the default options, change them if you want.
						-- Delayed time after user input, in milliseconds.
						complete_defer = 100,
						-- Max items when searching `taglist`.
						max_items = 10,
						-- The number of characters that need to be typed to trigger
						-- auto-completion.
						keyword_length = 3,
						-- Use exact word match when searching `taglist`, for better searching
						-- performance.
						exact_match = false,
						-- Prioritize searching result for current buffer.
						current_buffer_only = false,
					},
				},
			})
		end,
	},
}
