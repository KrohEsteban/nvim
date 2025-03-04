-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Elimina mappings innecesarios si los trae otro plugin.
-- Como uso comentarios con gc puedo eliminar los demas.
vim.keymap.del("n", "gco") -- Comentario en la linea anterior.
vim.keymap.del("n", "gcO") -- Comentario en la linea siguiente.
vim.keymap.del("n", "gcc") -- Comentario en la linea actual.

-- Elimino conflictos en Textobjects.
vim.keymap.del({"o", "x"}, "i")
vim.keymap.del({"o", "x"}, "a")

-- Elimino el conflicto con el arbol de archivos.
vim.keymap.del("n", "<Space>e")

