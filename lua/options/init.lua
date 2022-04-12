--[[ Lua fun Author : tsjazil Email : tsjazil@gmail.com ]]

vim.cmd('colorscheme nordic')

local opt = vim.opt

opt.syntax = 'enable'

opt.hidden         = true
opt.splitbelow     = true
opt.splitright     = true
opt.smarttab       = true
opt.expandtab      = true
opt.smartindent    = true
opt.autoindent     = true
--
opt.termguicolors  = true 
--
opt.backup         = false
opt.writebackup    = false
opt.wrap           = false

-- opt.signcolumn = "yes"

vim.o.encoding     = "utf-8"
vim.o.fileencoding ="utf-8"

opt.pumheight      = 10
opt.updatetime     = 300
opt.timeoutlen     = 500
opt.conceallevel   = 0
opt.tabstop        = 2
opt.shiftwidth     = 2
opt.cmdheight      = 1
opt.relativenumber = true
opt.ignorecase     = true
opt.smartcase      = true
opt.cursorline     = true
opt.title          = true
opt.hlsearch       = false 
--
opt.showmode       = false
opt.ruler          = false
opt.showcmd        = false
vim.o.background   = 'dark'
opt.mouse          = 'a'
vim.o.clipboard = "unnamedplus"
-- vim.g.transparent_enabled = true --Transparency is achieved by plugin 'xiyaowong/nvim-transparent'
opt.list=true
-- opt.list = true
-- opt.listchars = "tab:\|\ "
opt.laststatus = 3
-- vim.cmd('set laststatus=3')
-- vim.cmd('TSBufEnable highlight')
--
-- vim.g.nord_contrast = true
-- vim.g.nord_borders = false 
-- vim.g.nord_disable_background = true
-- vim.g.nord_italic = true 
-- vim.g.nord_cursorline_transparent = true
-- require('nord').set()
-- Load the colorscheme
--
vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NvimTreeNormal guibg=none')
vim.cmd('highlight  NvimTreeFolderIcon guifg=#81a1c1')
vim.cmd('highlight  NvimTreeFolderName guifg=#81a1c1')
--vim.cmd('colorscheme nord')
vim.cmd('highlight VertSplit guibg=none')
vim.cmd('highlight AlphaHeader guifg=#C9CBFF')
-- vim.cmd('highlight Comment gui=italic')
vim.cmd('highlight AlphaFooter guifg=#C9CBFF')
vim.cmd('highlight Keyword guifg=#575268')
vim.cmd('highlight Statusline guibg=none')
vim.cmd('highlight StatuslineNC guibg=none')
vim.cmd('highlight BufferLineModifiedSelected guifg=#A3BE8C')
vim.cmd('highlight BufferLineModifiedSelected guibg=Tabline')
vim.cmd('highlight Keyword guifg=#81A1C1')


-- Example config in lua



















-- vim.cmd("NvimTreeResize 20")

-- vim.cmd('highlight BufferLineDuplicateSelected guibg=none')
-- vim.cmd('highlight AlphaHeader guifg=#988BA2')
-- vim.cmd('highlight! StatusLineNC gui=underline guibg=NONE guifg=none')
-- vim.cmd('colorscheme tokyonight')
-- vim.g.tokyonight_style = "storm"
-- Catppuccin theme
-- vim.cmd('colorscheme catppuccin')
-- vim.cmd('hi BufferLineFill guibg=none')
-- vim.cmd('highlight NvimTreeVertSplit guifg=#6E6C7E')
-- vim.cmd('highlight NormalNC guibg=none')
-- vim.cmd('highlight NvimTreeNormal guibg=none')
-- vim.cmd('highlight NvimTreeVertSplit guifg=#1E2E1E guibg=none')

-- if vim.bo.filetype == "lua"
--   then
--     vim.cmd('echo "Hello"')
--   end

-- vim.cmd('highlight Comment          ctermfg=4    ctermbg=none    cterm=italic')
-- vim.cmd('highlight Constant         ctermfg=12   ctermbg=none    cterm=none')
-- vim.cmd('highlight Special          ctermfg=4    ctermbg=none    cterm=none')
-- vim.cmd('highlight Identifier       ctermfg=6    ctermbg=none    cterm=none')
-- vim.cmd('highlight PreProc          ctermfg=5    ctermbg=none    cterm=none')
-- vim.cmd('highlight String           ctermfg=12   ctermbg=none    cterm=none')
-- vim.cmd('highlight Number           ctermfg=1    ctermbg=none    cterm=none')
-- vim.cmd('highlight Function         ctermfg=1    ctermbg=none    cterm=none')
-- vim.cmd('highlight Comment          ctermfg=4    ctermbg=none    cterm=italic')
-- vim.cmd('highlight Constant         ctermfg=12   ctermbg=none    cterm=none')
-- vim.cmd('highlight Special          ctermfg=4    ctermbg=none    cterm=none')
-- vim.cmd('highlight Identifier       ctermfg=6    ctermbg=none    cterm=none')
-- vim.cmd('highlight PreProc          ctermfg=5    ctermbg=none    cterm=none')
-- vim.cmd('highlight String           ctermfg=12   ctermbg=none    cterm=none')
-- vim.cmd('highlight Number           ctermfg=1    ctermbg=none    cterm=none')
-- vim.cmd('highlight Function         ctermfg=1    ctermbg=none    cterm=none')
