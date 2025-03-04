-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.python3_host_prog = "C:/Users/Ekroh.Nubity/AppData/Local/Programs/Python/Python313/python.exe"

-- Para que me muestre los comentarios al costado.
vim.diagnostic.config({
  virtual_text = {
    prefix = "●",
    spacing = 4,
  },
})

