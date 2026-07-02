return { 
    "nvim-treesitter/nvim-treesitter", 
    branch = "master",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")

        config.setup({
            ensure_installed = { 
                "lua", 
                "javascript", 
                "cpp", 
                "python", 
                "c",
                "markdown",
                "markdown_inline"
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
