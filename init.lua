vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set nobackup")
vim.cmd("set nowritebackup")
vim.cmd("set noswapfile")
vim.cmd("set rnu")
vim.cmd("set cursorline")
vim.opt.shadafile = "NONE"

require("config.lazy")
require("ibl").setup()

vim.cmd.colorscheme("kanagawa")

--require("catppuccin").setup()
--vim.cmd.colorscheme("catppuccin-mocha")
--require("onedark").load()
--vim.cmd.colorscheme("onedark")

-- Set the background transparency for Neovim
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NonText", { bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })

-- Set the font color of line numbers
vim.api.nvim_set_hl(0, "LineNr", { fg = "#f7f5f5" })

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
-- map :tabn and :tabp to F7 and F8
vim.keymap.set("n", "<F7>", ":tabn<CR>", {})
vim.keymap.set("n", "<F8>", ":tabp<CR>", {})

-- file navigation
vim.keymap.set("n", "<leader>e", ":Ex<CR>", {})

-- buffer navigation
vim.keymap.set("n", "<leader>b", ":b#<CR>", {})
vim.keymap.set("n", "<leader>n", ":n#<CR>", {})

vim.keymap.set("n", "<F8>", ":tabp<CR>", {})

vim.keymap.set("n", "<leader>f", ":Neotree filesystem reveal toggle right<CR>", {})

  -- Set the shell to PowerShell 7
if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
  vim.o.shell = '"C:\\Program Files\\PowerShell\\7\\pwsh.exe"'
  vim.o.shellcmdflag = '-NoLogo'
  vim.o.shellquote = ''
  vim.o.shellxquote = ''
end
