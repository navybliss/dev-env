return
{
    "nvim-treesitter/nvim-treesitter",
    enabled = true,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "python", "javascript", "typescript", "bash", "yaml", "c", "cpp", "rust", "zig" },
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
                disable = { "python" },
            },
            autopairs = {
                enable = true,
            },
        })
        -- Automatically install missing parsers when entering buffer
        require("nvim-treesitter.install").update({ with_sync = false })

        -- Disable search highlighting (regex-based search results in normal mode)
        vim.opt.hlsearch = false  -- Turn off highlighting of search results
    end,
}

