-- four space tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- theming
local theme_file = vim.fn.stdpath("config") .. "/theme.txt"

local function set_theme(theme)
  vim.cmd.colorscheme(theme)
  vim.fn.writefile({ theme }, theme_file)
end

local function load_theme()
  if vim.fn.filereadable(theme_file) == 1 then
    local theme = vim.fn.readfile(theme_file)[1]
    pcall(vim.cmd.colorscheme, theme)
  else
    vim.cmd.colorscheme("catppuccin")
  end
end

load_theme()

vim.keymap.set("n", "<leader>tc", function() set_theme("catppuccin") end)
vim.keymap.set("n", "<leader>tt", function() set_theme("tokyonight") end)
vim.keymap.set("n", "<leader>tk", function() set_theme("kanagawa") end)
vim.keymap.set("n", "<leader>tr", function() set_theme("rose-pine") end)

-- terminal
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | terminal<CR>")
vim.keymap.set("n", "<leader>th", "<cmd>split | terminal<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>terminal<CR>")

vim.keymap.set("t", "<Esc>", [[<C-\\><C-n]])

-- window splits
vim.keymap.set("n", "<leader>wv", "<cmd>vsplit<CR>")
vim.keymap.set("n", "<leader>wh", "<cmd>split<CR>")
vim.keymap.set("n", "<leader>wc", "<cmd>close<CR>")
vim.keymap.set("n", "<leader>wo", "<cmd>only<CR>")

-- basically just control / leader + the vim movement
-- window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- window resizing
vim.keymap.set("n", "<leader>wh", "<cmd>vertical resize -5<CR>")
vim.keymap.set("n", "<leader>wl", "<cmd>vertical resize +5<CR>")
vim.keymap.set("n", "<leader>wk", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<leader>wj", "<cmd>resize -2<CR>")

-- neotree transparency
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd([[
      highlight NeoTreeNormal guibg=NONE
      highlight NeoTreeNormalNC guibg=NONE
      highlight NeoTreeEndOfBuffer guibg=NONE
      highlight NeoTreeWinSeparator guibg=NONE
    ]])
  end,
})

vim.cmd([[
  highlight NeoTreeNormal guibg=NONE
  highlight NeoTreeNormalNC guibg=NONE
  highlight NeoTreeEndOfBuffer guibg=NONE
  highlight NeoTreeWinSeparator guibg=NONE
]])
