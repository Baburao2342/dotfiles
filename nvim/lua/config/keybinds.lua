vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', ":Neotree filesystem toggle<CR>")

vim.keymap.set('n', '<leader>gp', ":Gitsigns preview_hunk<CR>", {})
vim.keymap.set('n', '<leader>gt', ":Gitsigns toggle_current_line_blame<CR>", {})


vim.keymap.set('n', '<leader>rr', ':RunCode<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
