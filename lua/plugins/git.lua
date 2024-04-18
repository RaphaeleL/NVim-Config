return {
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        keys = {
            { "<Leader>gg", ":LazyGit<cr>", desc = " [G]it: Lazy[G]it" },
        }
    },
    {
        "tpope/vim-fugitive",
        lazy = true,
        keys = {
            { "<Leader>ga", ":Git add .<cr>", desc = " [G]it add ." },
            { "<Leader>gc", ":Git commit<cr>", desc = " [G]it commit" },
            { "<Leader>gp", ":Git push<cr>", desc = " [G]it push" },
            { "<Leader>gP", ":Git pull --rebase<cr>", desc = " [G]it pull --rebase" },
            { "<Leader>gd", ":Git diff<cr>", desc = " [G]it diff" },
        }
    },
}
