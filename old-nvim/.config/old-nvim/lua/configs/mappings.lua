
local map = vim.keymap.set

--keymaps--
map('n',';',':')
vim.api.nvim_create_user_command('Q', 'q!', {})
map("n", "vv", "V", { noremap = true, silent = true })
map("n", "<leader>rn", function()
  vim.opt.relativenumber = not vim.opt.relativenumber:get()
  vim.opt.number = vim.opt.relativenumber:get()
end, { desc = "Toggle relative number" })

map("n", "<leader>n", function()
  vim.opt.relativenumber=false
  vim.opt.number = not vim.opt.number:get()
end, { desc = "Toggle number" })

map('n','gll',vim.diagnostic.open_float)

map("n","<leader>fm",vim.lsp.buf.format)

--oil
map('n','\\',"<CMD>Oil --float<CR>",{})
map('n','<leader>o',"<CMD>Oil --float<CR>",{})

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n','<leader>i',"<CMD>Inspect<CR>")

map('n', '<A-v>', ':split<CR>', { noremap = true, silent = true })
map('n', '<A-b>', ':vsplit<CR>', { noremap = true, silent = true })
