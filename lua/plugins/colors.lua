local function enable_transparency()
	vim.api.nvim_set_hl(0, "Normal", { bg = "None" })
end

return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000, -- Zorg dat het thema als eerste laadt
		config = function()
			require("gruvbox").setup({
				transparent_mode = true, -- transparantie
			})
			vim.cmd.colorscheme "gruvbox"
		end,
	},

	{
		"folke/tokyonight.nvim",
		lazy = true,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			options = {
				theme = 'auto',
				component_separators = '',
				section_separators = '',
			}
		}
	},
}
