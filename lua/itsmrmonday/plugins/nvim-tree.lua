return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = { 
	{ "t", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
  },
  config = function()
    require("nvim-tree").setup {
	filters = { 
		dotfiles = false,
		git_clean = false,
		git_ignored = false,
		no_buffer = false,
		custom = { 'node_modules', '.git' },
	}
    }
  end,
}
