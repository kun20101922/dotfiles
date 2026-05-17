return {
	'akinsho/bufferline.nvim', version = "*", 
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function ()
		require("bufferline").setup {
			highlights = {
				background = { bg = 'none' },
				fill = { bg = 'none' },
				buffer_selected = { bg = 'none', fg = '#fab387' },
				buffer_visible = { bg = 'none', fg = '#a6adc8' },
				close_button = { bg = 'none' },
				close_button_selected = { bg = 'none' },
				close_button_visible = { bg = 'none' },
				duplicate = { bg = 'none' },
				duplicate_selected = { bg = 'none' },
				duplicate_visible = { bg = 'none' },
				error = { bg = 'none' },
				error_selected = { bg = 'none' },
				error_visible = { bg = 'none' },
				hint = { bg = 'none' },
				hint_selected = { bg = 'none' },
				hint_visible = { bg = 'none' },
				indicator_selected = { bg = 'none' },
				indicator_visible = { bg = 'none' },
				info = { bg = 'none' },
				info_selected = { bg = 'none' },
				info_visible = { bg = 'none' },
				modified = { bg = 'none' },
				modified_selected = { bg = 'none' },
				modified_visible = { bg = 'none' },
				numbers = { bg = 'none' },
				numbers_selected = { bg = 'none' },
				numbers_visible = { bg = 'none' },
				offset_separator = { bg = 'none' },
				pick = { bg = 'none' },
				pick_selected = { bg = 'none' },
				pick_visible = { bg = 'none' },
				separator = { bg = 'none' },
				separator_selected = { bg = 'none' },
				separator_visible = { bg = 'none' },
				tab = { bg = 'none' },
				tab_close = { bg = 'none' },
				tab_selected = { bg = 'none' },
				tab_separator = { bg = 'none' },
				tab_separator_selected = { bg = 'none' },
				trunc_marker = { bg = 'none' },
				warning = { bg = 'none' },
				warning_selected = { bg = 'none' },
				warning_visible = { bg = 'none' },
			},
			options = {
				mode = "buffers",                    
				themable = true,
				numbers = "none",                    
				close_command = "bdelete! %d",       
				right_mouse_command = "bdelete! %d",
				left_mouse_command = "buffer %d",
				middle_mouse_command = nil,

				buffer_close_icon = '󰅖',
				modified_icon = '●',
				close_icon = '',
				left_trunc_marker = '',
				right_trunc_marker = '',

				show_buffer_icons = true,            
				show_buffer_close_icons = true,
				show_close_icon = true,
				show_tab_indicators = true,
				show_duplicate_prefix = true,
				color_icons = true,                 
				separator_style = "thin",            
				always_show_bufferline = false,
				hover = {
					enabled = true,
					delay = 150,
					reveal = { "close" },
				},

				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},

				diagnostics = "nvim_lsp",            
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		}
	end
}


