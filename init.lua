vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")

require("config.lazy")
require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")

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

vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal toggle right<CR>", {})
