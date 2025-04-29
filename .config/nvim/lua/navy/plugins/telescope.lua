return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	
	config = function()
		local builtins = require("telescope.builtin")
		vim.keymap.set("n", "<leader>pf", builtins.find_files, {})
		vim.keymap.set("n", "<C-p>", builtins.git_files, {})
		vim.keymap.set("n", "<leader>ps", function()
			builtins.grep_string({ search = vim.fn.input("Grep > ") })
		end)
		vim.keymap.set("n", "<leader>vh", builtins.help_tags, {})
	end
}
