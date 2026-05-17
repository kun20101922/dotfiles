return {
	'saghen/blink.cmp',
	-- optional: provides snippets for the snippet source
	dependencies = { 'rafamadriz/friendly-snippets' },

	-- use a release tag to download pre-built binaries
	version = '1.*',
	-- AND/OR build from source
	-- build = 'cargo build --release',
	-- If you use nix, you can build from source with:
	-- build = 'nix run .#build-plugin',

	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = 'enter' },
		appearance = {
			nerd_font_variant = 'mono'
		},
		completion = {

			menu = {
				auto_show = true,
				scrollbar = false,
				scrolloff = 10,
				auto_show_delay_ms = 100,
				min_width = 20,
				max_height = 15,
				draw = {
					padding = 2,
					gap = 2,
					columns = {
						{ "kind_icon", gap = 2 },
						{ "label", "label_description", gap = 2 },
						{ "kind", gap = 2 },
						--{ "source_name", gap = 1 },
					},
					components = {
						kind_icon = {
							text = function(ctx)
								return require('lspkind').symbol_map[ctx.kind] or ''
							end,
						},
					},
				},
			},

			list = {

				selection = {
					preselect = true,
					auto_insert = true,
				}
			}
		},    
		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},
	opts_extend = { "sources.default",  }
}


