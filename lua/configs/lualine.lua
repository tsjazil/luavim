-- Eviline config for lualine
-- Author: shadmansaleh
-- Credit: glepnir
local lualine = require('lualine')

-- Color table for highlights
-- stylua: ignore
-- nord
local colors = {
  bg       = '#1A1826',
--bg       = '#302D41',
  fg       = '#e5e9f0',
  yellow   = '#ebcb8b',
  cyan     = '#8fbcbb',
  darkblue = '#081633',
  green    = '#ABE9B3',
  orange   = '#F8BD96',
  violet   = '#DDB6F2',
  magenta  = '#b48ead',
  blue     = '#81a1c1',
  red      = '#bf616a',
}


-- local colors = {
--   bg       = '#1A1826',
-- --bg       = '#302D41',
--   fg       = '#D9E0EE',
--   yellow   = '#FAE3B0',
--   cyan     = '#89DCEB',
--   darkblue = '#081633',
--   green    = '#ABE9B3',
--   orange   = '#F8BD96',
--   violet   = '#DDB6F2',
--   magenta  = '#C9CBFF',
--   blue     = '#96CDFB',
--   red      = '#F28FAD',
-- }
local conditions = {
  buffer_not_empty = function()
    return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
  end,
  hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end,
  check_git_workspace = function()
    local filepath = vim.fn.expand('%:p:h')
    local gitdir = vim.fn.finddir('.git', filepath .. ';')
    return gitdir and #gitdir > 0 and #gitdir < #filepath
  end,
}

-- Config
local config = {
  options = {
    -- globalstatus = true,
    disabled_filetypes = { 'packer' , 'alpha' , 'NvimTree' }, -- Disable sections and component separators
    component_separators = '',
    section_separators = '',
    theme = {
      -- We are going to use lualine_c an lualine_x as left and
      -- right section. Both are highlighted by c theme .  So we
      -- are just setting default looks o statusline
      normal = { c = { fg = colors.fg, bg = colors.bg } },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    },
  },
  sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_d = {},
    lualine_y = {},
    lualine_z = {},
    -- These will be filled later
    lualine_c = {},
    lualine_x = {},
  },
  inactive_sections = {
    -- these are to remove the defaults
    lualine_a = {},
    lualine_b = {},
    lualine_y = {},
    lualine_z = {},
    lualine_c = {},
    lualine_x = {},
  },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  function()
        return '▊'
  end,
  color = { fg = colors.blue ,bg=colors.blue }, -- Sets highlighting of component
  padding = { left = 0,  right = -2 }, -- We don't need space before this
}

ins_left {
  -- mode component
  function()
    return '  '
    --return ' '
    -- return ''
  end,
  color = function()
    -- auto change color according to neovims mode
    local mode_color = {
      n = colors.blue,
      i = colors.green,
      v = colors.red,
      [''] = colors.blue,
      V = colors.blue,
      c = colors.magenta,
      no = colors.red,
      s = colors.orange,
      S = colors.orange,
      [''] = colors.orange,
      ic = colors.yellow,
      R = colors.violet,
      Rv = colors.violet,
      cv = colors.red,
      ce = colors.red,
      r = colors.cyan,
      rm = colors.cyan,
      ['r?'] = colors.cyan,
      ['!'] = colors.red,
      t = colors.red,
    }
    return { fg = mode_color[vim.fn.mode()] }
  end,
   --padding = { up=5 ,right = 1 },
}

--ins_left{
  ---- filesize component
  --'filesize',
  --cond = conditions.buffer_not_empty,
--}
--

ins_left { 'progress', color = { fg = colors.fg  } }

ins_left {
  'diagnostics',
  sources = { 'nvim_diagnostic' },
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}





-- Insert mid section. You can make any number of sections in neovim :)
-- for lualine it's any number greater then 2
ins_left {
  function()
    return '%='
  end,
}

ins_left {
  -- Lsp server name .
  function()
    local msg = ''
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then
      return msg
    end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  --icon = ' LSP:',
  color = { fg = '#ffffff', gui = 'bold' },
}

-- Add components to right sections
--ins_right {
  --'o:encoding', -- option component same as &encoding in viml
  --fmt = string.upper, -- I'm not sure why it's upper case either ;)
  --cond = conditions.hide_in_width,
  --color = { fg = colors.green , gui = 'italic'},
--}

--ins_right {
  --'fileformat',
  --fmt = string.upper,
  --icons_only = true, -- I think icons are cool but Eviline doesn't have them. sigh
  --color = { fg = colors.green, gui = 'bold' },
--}




ins_right{
  
      'filetype',
      colored = true,   -- Displays filetype icon in color if set to true
  --color = { fg = colors.magenta, gui = 'bold' },
      icon_only = true, -- Display only an icon for filetype
    
}
ins_right{
  'filename',
  cond = conditions.buffer_not_empty,
  color = { fg = colors.magenta, gui = 'bold' },
  icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
}

ins_right{ 
  'location', 
  color = { fg = colors.blue    },
}






ins_right {
  'branch',
  --icon = '',
  icon = 'שׂ',
  color = { fg = colors.violet, gui = 'bold' },
}

ins_right {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳 ', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
  cond = conditions.hide_in_width,
}

ins_right {
  function()
    return '▊'
  end,
  color = {bg=colors.blue, fg = colors.blue },
  padding = { left = -2 ,bottom = 8},
}

-- Now don't forget to initialize lualine
lualine.setup(config)
