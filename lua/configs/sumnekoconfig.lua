-- require'lspconfig'.sumneko_lua.setup {
--     -- ... other configs
--     settings = {
--         Lua = {
--             diagnostics = {
--                 globals = { 'vim' }
--             }
--         }
--     }
-- }


-- if server.name == 'sumneko_lua' then
--   opts.settings = {
--     Lua = {
--       diagnostics = { globals = {  'vim' }
--     }
--   }
-- end
-- server:setup(opts)


-- if server.name == "sumneko_lua" then
  --   opts = {
  --     settings = {
  --       Lua = {
  --         diagnostics = {
  --           globals = { 'vim', 'use' }
  --         },
  --         --workspace = {
  --           -- Make the server aware of Neovim runtime files
  --           --library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
  --         --}
  --       }
  --     }
  --   }
  -- end
