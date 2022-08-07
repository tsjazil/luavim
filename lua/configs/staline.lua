-- require('staline').setup{}

require "staline".setup {
	sections = {
		-- left = {  'mode', ' ', ' ', 'file_name' ,' ','branch'},
		left = { '  ', 'mode', ' ', ' ', 'file_name' ,' ','branch'},
		-- left = { '  ', 'mode', ' ', ' ', 'lsp' ,'branch'},
		-- mid = {'file_name'},
		mid = {'lsp'},
		right = {  'line_column' }
	},
	mode_colors = {
		i = "#81a1c1",
    n = "#88c0d0",
		c = "#a3be8c",
    v = "#b48ead",
		-- i = "#d4be98",
		-- n = "#8fbcbb",
		-- v = "#81a1c1",
	},
  -- mode_icons = {
  --     n = " ",
  --     i = " ",
  --     c = " ",
  --     v = " ",   -- etc..
  --   },

  mode_icons = {
      n = " Normal ",
      i = " Insert ",
      c = " Command ",
      v = "  Visual ",   -- etc..
      V = "  Visual Line ",   -- etc..
    },


	defaults = {
		true_colors = true,
		-- line_column = " 並%p%% ",
		-- line_column = "並%l/%L ",
		line_column = "%l/%L  %c  並 %p%% ",
		-- line_column_new = " 並%p%% ",
		-- line_column = "%l/%L  %c  並%p%% ",
		branch_symbol = " "
	}
}
