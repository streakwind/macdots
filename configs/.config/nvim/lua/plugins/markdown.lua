return {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        latex = {
            enabled = true,
        },
    },
    config = function(_, opts)
        require("render-markdown").setup(opts)

        vim.keymap.set("n", "<leader>md", "<cmd>RenderMarkdown toggle<CR>")
    end
}
