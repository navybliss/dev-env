	--requires Node.js & npm
return {
        "github/copilot.vim",
        enabled = true,
        config = function()
            -- configuration here if needed
            vim.keymap.set("n", "<leader>ct", "<cmd>Copilot restart <CR>")
        end
    }
