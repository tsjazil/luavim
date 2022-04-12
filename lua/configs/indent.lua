local present, indent_blankline = pcall(require, "indent_blankline")

if not present then 
  return
end

indent_blankline.setup {
  filetype_exclude = {
    "help",
    "terminal",
    "dashboard",
    "alpha",
    "packer",
    "TelescopePrompt",
    "TelescopeResults",
    "",
  },
  buftype_exclude = { "terminal", "nofile" },
  -- buftype_exclude = { "alpha" },
  -- buftype_exclude = { "Alpha", "nofile" },
}


