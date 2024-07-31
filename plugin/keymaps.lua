-- Buffer and Window
vim.keymap.set("i", "kj", "<ESC>", { desc = "Buffer: Go to Normal Mode" })
vim.keymap.set("i", "jk", "<ESC>", { desc = "Buffer: Go to Normal Mode" })
vim.keymap.set("n", "<Space>", "<NOP>", { desc = "Buffer: Leader" })
vim.keymap.set("n", "<TAB>", ":write<cr>:bprev<cr>", { desc = "Buffer: Next Tab and Write Buffer" })
vim.keymap.set("n", "<S-TAB>", ":write<cr>:bnext<cr>", { desc = "Buffer: Previous Tab" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Buffer: Move to the left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Buffer: Move to the bottom Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Buffer: Move to the upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Buffer: Move to the right Window" })
vim.keymap.set("n", "sv", ":vsplit<cr>", { desc = "Buffer: Vertical Split" })
vim.keymap.set("n", "ss", ":split<cr>", { desc = "Buffer: Horizontal Split" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Buffer: Move Page up and stay in the Middle of the Screen" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Buffer: Move Page up and stay in the Middle of the Screen" })

vim.keymap.set("n", "<Leader>n", ":noh<cr>", { desc = "Buffer: No Highlighting" })

vim.keymap.set("n", "<S-Up>", ":resize -2<CR>", { desc = "Buffer Resize up" })
vim.keymap.set("n", "<S-Down>", ":resize +2<CR>", { desc = "Buffer Resize down" })
vim.keymap.set("n", "<S-Left>", ":vertical resize -2<CR>", { desc = "Buffer Resize left" })
vim.keymap.set("n", "<S-Right>", ":vertical resize +2<CR>", { desc = "Buffer Resize right" })

vim.keymap.set("n", "sc", ":quit!<cr>", { desc = "Buffer: Close" })
vim.keymap.set("n", "c", ":bd<cr>", { desc = "Window: Close" })

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- Char
vim.keymap.set("n", "+", "<C-x>", { desc = "Chars: Increment a Number" })
vim.keymap.set("n", "-", "<C-a>", { desc = "Chars: Decrement a Number" })

vim.keymap.set("n", "<Leader>Y", '"+Y', { desc = "Chars: Yank line" })
vim.keymap.set("x", "<Leader>p", '"_dP', { desc = "Chars: Paste without losing the Buffer" })
vim.keymap.set("n", "x", '"_x', { desc = "Chars: Delete Char without losing the Buffer" })
vim.keymap.set("i", "<C-BS>", "<Esc>cvb", { desc = "Chars: Delete a Word." })

-- Line
vim.keymap.set("v", "<", "<gv", { desc = "Line: Indent to Left" })
vim.keymap.set("v", ">", ">gv", { desc = "Line: Indent to Right" })

vim.keymap.set(
	"n",
	"k",
	"v:count == 0 ? 'gk' : 'k'",
	{ expr = true, silent = true, desc = "Line: Move in a Linebreak up" }
)
vim.keymap.set(
	"n",
	"j",
	"v:count == 0 ? 'gj' : 'j'",
	{ expr = true, silent = true, desc = "Line: Move in a Linebreak down" }
)

vim.keymap.set({ "n", "v" }, "<Leader>l", ":CommentToggle<cr>", { desc = "Line: Comment Selection in/out" })

vim.keymap.set("n", "<C-a>", "GVgg", { desc = "Line: mark everything" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Line: Concat Line without moving the Cursor" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Line: Move Selection up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Line: Move Selection down" })

vim.keymap.set({ "n", "v" }, "H", "0", { desc = "Line: Move to the start of a Line" })
vim.keymap.set({ "n", "v" }, "L", "$", { desc = "Line: Move to the end of a Line" })

-- Plugin Specific
vim.keymap.set("n", "<Leader>e", ":lua vim.diagnostic.open_float()<cr>", { desc = "LSP: Open Diagnostic of Line" })
vim.keymap.set("n", "_", ":Oil<cr>", { desc = "Filesystem: Open Oil Filebrowser" })
vim.keymap.set("n", "<Leader>ts", ":InspectTree<cr>", { desc = "Treesitter: Inspect Tree" })

-- Nvim Specific
vim.keymap.set("n", "<space>tt", function()
	vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 })
end)
