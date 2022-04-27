--[[ Author : tsjazil Email : tsjazil@gmail.com ]]

vim.cmd('colorscheme nordic')

local opt = vim.opt


vim.o.encoding     = "utf-8"
vim.o.fileencoding ="utf-8"

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
opt.list=true
opt.laststatus = 3



vim.cmd('highlight Normal guibg=none')
vim.cmd('highlight NvimTreeNormal guibg=none')
vim.cmd('highlight  NvimTreeFolderIcon guifg=#81a1c1')
vim.cmd('highlight  NvimTreeFolderName guifg=#81a1c1')
vim.cmd('highlight VertSplit guibg=none')
vim.cmd('highlight AlphaHeader guifg=#C9CBFF')
vim.cmd('highlight AlphaFooter guifg=#C9CBFF')
vim.cmd('highlight Keyword guifg=#575268')
vim.cmd('highlight Statusline guibg=none')
vim.cmd('highlight StatuslineNC guibg=none')
vim.cmd('highlight BufferLineModifiedSelected guifg=#A3BE8C')
vim.cmd('highlight BufferLineModifiedSelected guibg=Tabline')
vim.cmd('highlight Keyword guifg=#81A1C1')
