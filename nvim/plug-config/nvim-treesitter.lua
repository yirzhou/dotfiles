require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "c",
    "cpp",
    "json",
    "rust",
    "javascript",
    "typescript",
    "html",
    "css",
    "python",
    "toml",
    "java"
  },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
  }
}
