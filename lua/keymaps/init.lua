local keymap = vim.api.nvim_set_keymap
vim.g.mapleader = " "
keymap('n', '<c-s>', ':w<CR>', {})
keymap('n', 'Q', '<c-v>', {})
keymap('n', 'fq', ':q!<CR>', {})
keymap('n', 'qq', ':q<CR>', {})
keymap('n', '<c-l>', ':NvimTreeFindFileToggle<CR>', {})
-- keymap ( 'n', '<c-l>', ':NvimTreeToggle<CR>' , {})
keymap('n', '<c-h>', ':Telescope help_tags<CR>', {})
keymap('n', '<c-g>', ':Telescope ', {})
keymap('n', '<c-f>', ':Telescope find_files<CR>', {})
keymap('n', '<c-Y>', ':PackerSync <CR>', {})
keymap('n', '<c-b>', ':PackerInstall<CR>', {})
keymap('n', '<S-h>', ':BufferLineCycleNext<CR>', {})
keymap('n', '<S-l>', ':BufferLineCloseLeft<CR>', {})
keymap('n', '<leader>n', ':so %<CR>', {})
keymap('n', '<leader>v', ':vsplit<CR>', {})
keymap('n', '<leader>s', ':split<CR>', {})
keymap('n', '<leader>t', ':vsplit<CR>:terminal<CR>', {})
keymap('n', '<leader>w', ':set wrap<CR>', {})

--lsp keymaps

keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", {}) --> jumps to the definition of the symbol under the cursor
keymap("n", "<leader>lh", ":lua vim.lsp.buf.hover()<CR>", {}) --> information about the symbol under the cursos in a floating window
keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", {}) --> lists all the implementations for the symbol under the cursor in the quickfix window
keymap("n", "<leader>rn", ":lua vim.lsp.util.rename()<CR>", {}) --> renaname old_fname to new_fname
keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", {}) --> selects a code action available at the current cursor position
keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", {}) --> lists all the references to the symbl under the cursor in the quickfix window
keymap("n", "<leader>ld", ":lua vim.diagnostic.open_float()<CR>", {})
keymap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", {})
keymap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", {})
keymap("n", "<leader>lq", ":lua vim.diagnostic.setloclist()<CR>", {})
keymap("n", "<leader>lf", ":lua vim.lsp.buf.formatting()<CR>", {}) --> formats the current buffer
