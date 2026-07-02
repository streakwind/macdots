return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim"
    },
    config = function()
        vim.keymap.set('n', '<leader>e', '<cmd>Neotree filesystem toggle reveal left<CR>')
        vim.keymap.set('n', '<leader>o', '<cmd>Neotree focus<CR>')
        vim.keymap.set('n', '<leader>r', '<cmd>Neotree reveal<CR>')

        -- additionally,
        -- a - add file/directory
        -- A - add directory
        -- d - delete
        -- r - rename
        -- c - copy
        -- m - move
        -- y - copy to clipboard
        -- x - cut to clipboard
        -- p - paste
        -- ? - help 
    end
}
