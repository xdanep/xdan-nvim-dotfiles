return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
    "HiPhish/rainbow-delimiters.nvim"
	},
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"lua",
			"luadoc",
			"c",
			"cpp",
			"python",
			"rust",
      "arduino",
      "dart",
      "gitignore",
      "toml",
      "yaml",
      "json",
      "cmake",
      "gitcommit",
      "regex"
		},
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
		textobjects = {
			select = {
				enable = true,
				lookahead = true,
				keymaps = {
					["af"] = "@function.outer",
					["if"] = "@function.inner",
					["ac"] = "@conditional.outer",
					["ic"] = "@conditional.inner",
					["al"] = "@loop.outer",
					["il"] = "@loop.inner",
				}
			},
		},
	},
}
