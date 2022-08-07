require "lspconfig".efm.setup {
    init_options = {documentFormatting = true},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {formatCommand = "lua-format -i", formatStdin = true}
            }
        }
    }
}
