vim.keymap.set("i", "<C-j>", "<");
vim.keymap.set("i", "<C-l>", ">");

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("n", "Q", "<nope>");
vim.keymap.set("n", "<leader>hh", ":b# <CR>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "\\\"", "viwc\"\"<Esc>hp<Esc>");
vim.keymap.set("v", "\\\"", "c\"\"<Esc>hp<Esc>");
vim.keymap.set("n", "\\(", "viwc()<Esc>hp<Esc>");
vim.keymap.set("v", "\\(", "c()<Esc>hp<Esc>");
vim.keymap.set("n", "\\J", "viwc<><Esc>hp<Esc>");
vim.keymap.set("v", "\\J", "c<><Esc>hp<Esc>");
vim.keymap.set("n", "\\{", "viwc{}<Esc>hp<Esc>");
vim.keymap.set("v", "\\{", "c{}<Esc>hp<Esc>");
vim.keymap.set("n", "\\[", "viwc[]<Esc>hp<Esc>");
vim.keymap.set("v", "\\[", "c[]<Esc>hp<Esc>");
vim.keymap.set("n", "\\\'", "viwc''<Esc>hp<Esc>");
vim.keymap.set("v", "\\\'", "c''<Esc>hp<Esc>");

vim.keymap.set("i", "{", "{}<Esc>i");
vim.keymap.set("i", "(", "()<Esc>i");

vim.opt.nu = true;
vim.opt.relativenumber = true;

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

vim.opt.colorcolumn = "180"

vim.opt.foldmethod = "expr";
vim.opt.foldexpr = "nvim_treesitter#foldexpr()";
vim.opt.foldlevel = 99;

vim.opt.sidescroll = 5
vim.opt.wrap = false
