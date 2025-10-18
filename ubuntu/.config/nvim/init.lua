vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

-- Lazy.nvim bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" },
	{ "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	"nvim-tree/nvim-tree.lua",
	"lukas-reineke/indent-blankline.nvim",
	"morhetz/gruvbox",
	"tpope/vim-surround",
	"tpope/vim-commentary",
	"jiangmiao/auto-pairs",
	"tpope/vim-fugitive",
	"junegunn/fzf",
	"junegunn/fzf.vim",
	"hrsh7th/nvim-cmp", -- motorul de completare
	"hrsh7th/cmp-nvim-lsp", -- integrare LSP
	"hrsh7th/cmp-buffer", -- completare din buffer
	"hrsh7th/cmp-path", -- completare din calea fișierelor
	"hrsh7th/cmp-cmdline", -- completare în cmdline
	"L3MON4D3/LuaSnip", -- snippets
	"saadparwaiz1/cmp_luasnip", -- integrare snippet cu cmp
	"nvim-lualine/lualine.nvim",
	"morhetz/gruvbox",
	"navarasu/onedark.nvim",
	"folke/tokyonight.nvim",
	"EdenEast/nightfox.nvim",
	"catppuccin/nvim",
	"dracula/vim",

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "gruvbox",
					section_separators = { left = "", right = "" },
					component_separators = { left = "", right = "" },
					globalstatus = true,
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = { { "filename", path = 1 } },
					lualine_x = { "encoding", "fileformat", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},

	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup()
	end,
	{
		"goolord/alpha-nvim",
		-- dependencies = { 'echasnovski/mini.icons' },
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local startify = require("alpha.themes.startify")
			-- available: devicons, mini, default is mini
			-- if provider not loaded and enabled is true, it will try to use another provider
			startify.file_icons.provider = "devicons"
			startify.section.header.val = {
				"🚀 Powered by:",
				"  _           _         _                        _   ",
				" | |__   ___ | |__   __| | ___ _ __   __ _ _   _| |_ ",
				" | '_ \\ / _ \\| '_ \\ / _` |/ _ \\ '_ \\ / _` | | | | __|",
				" | |_) | (_) | |_) | (_| |  __/ | | | (_| | |_| | |_ ",
				" |_.__/ \\___/|_.__/ \\__,_|\\___|_| |_|\\__,_|\\__,_|\\__|",
				"                                                      ",
			}
			require("alpha").setup(startify.config)
		end,
	},
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},
	{
		"tomtom/tcomment_vim",
		config = function()
			-- setări opționale, dar default funcționează Ctrl+V + gc
		end,
	},
})

-- Tree-sitter setup
require("nvim-treesitter.configs").setup({
	ensure_installed = { "lua", "python", "javascript", "html", "css", "java" },
	highlight = { enable = true },
	indent = { enable = true },
})

-- Nvim-tree setup
require("nvim-tree").setup({
	view = { width = 30, side = "left" },
	renderer = { icons = { show = { git = true, folder = true, file = true } } },
	sync_root_with_cwd = false,
	actions = {
		change_dir = {
			enable = false,
		},
	},
})

-- Telescope setup
require("telescope").setup({
	defaults = { file_ignore_patterns = { "node_modules", ".git/" } },
})

local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-Space>"] = cmp.mapping.complete(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "path" },
	}),
})

local builtin = require("telescope.builtin")
local telescope = require("telescope")
-- vim.keymap.set('n', '<leader>ff', function()
--     builtin.find_files({
--         cwd = os.getenv("HOME"),      -- home directory
--        hidden = true,                -- include fișiere ascunse
--         no_ignore = true,             -- ignoră .gitignore
--     })
-- end)

-- vim.keymap.set('n', '<leader>ff', function()
--     builtin.find_files({
--         prompt_title = "🔍 Fișiere text",
--        cwd = vim.loop.cwd(),      -- directorul curent
--        hidden = true,             -- include fișiere ascunse
--        no_ignore = true,          -- ignoră .gitignore
--        follow = true,             -- urmează symlink-uri
--        find_command = {
--            "fd",                  -- pe Ubuntu puneți alias fd -> fdfind
--            "--type", "f",         -- numai fișiere
--            "--follow"
--        },
--    })
-- end)
telescope.setup({
	defaults = {
		file_ignore_patterns = {}, -- poți adăuga pattern-uri dacă vrei
	},
	extensions = {
		fzf = {
			fuzzy = true, -- filtrare fuzzy
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

-- Activează extensia fzf
telescope.load_extension("fzf")

-- Mapping pentru leader+ff
vim.keymap.set("n", "<leader>ff", function()
	builtin.find_files({
		prompt_title = "🔍 Fișiere curente",
		cwd = vim.loop.cwd(), -- directorul curent
		hidden = true, -- include fișiere ascunse
		no_ignore = true, -- ignoră .gitignore
		follow = true, -- urmează symlink-uri
		find_command = { "fd", "--type", "f", "--hidden", "--follow" },
	})
end)

-- Keymaps
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>t", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>l", ":Lazy<CR>")

require("catppuccin").setup({
	flavour = "mocha", -- latte / frappe / macchiato / mocha
	background = { -- light / dark
		light = "latte",
		dark = "mocha",
	},
	transparent_background = false,
	term_colors = true,
	integrations = {
		lualine = true,
		treesitter = true,
		telescope = true,
		nvimtree = true,
	},
})

local gs = package.loaded.gitsigns

-- Git status / commit / push / pull (Vim-Fugitive)
vim.keymap.set("n", "<leader>gs", "<Cmd>Git<CR>", { desc = "Git status" })
vim.keymap.set("n", "<leader>gc", "<Cmd>Git commit<CR>", { desc = "Git commit" })
vim.keymap.set("n", "<leader>gp", "<Cmd>Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gl", "<Cmd>Git pull<CR>", { desc = "Git pull" })
vim.keymap.set("n", "<leader>hu", require("gitsigns").reset_hunk, { desc = "Reset hunk" })
vim.keymap.set("n", "<leader>hb", require("gitsigns").reset_buffer, { desc = "Reset buffer" })

vim.cmd([[colorscheme tokyonight-night]])
