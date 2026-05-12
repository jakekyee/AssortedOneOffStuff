local map = vim.keymap.set

-- =========================
-- Telescope (SAFE LAZY LOAD)
-- =========================
map("n", "<leader>ff", function()
  require("telescope.builtin").find_files()
end)

map("n", "<leader>fg", function()
  require("telescope.builtin").live_grep()
end)

-- =========================
-- File explorer
-- =========================
-- map("n", "<leader>e", ":Neotree toggle<CR>", { silent = true })

-- =========================
-- Terminal
-- =========================
map("n", "<leader>tt", ":ToggleTerm<CR>", { silent = true })

-- =========================
-- SSHFS
-- =========================
map("n", "<leader>ss", ":SSHFSConnect<CR>", { silent = true })

-- =========================
-- Ctrl key GUI behavior
-- =========================

-- Ctrl + C (copy selection to system clipboard)
map("v", "<C-c>", '"+y', { silent = true })

-- Ctrl + V (paste)
map("n", "<C-v>", '"+p', { silent = true })
map("i", "<C-v>", '<C-r>+', { silent = true })

-- Ctrl + A (select all)
map("n", "<C-a>", "ggVG", { silent = true })


map("n", "<C-p>", function()
  require("telescope.builtin").find_files()
end)

map("n", "<C-S-f>", function()
  require("telescope.builtin").live_grep()
end)


map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")


map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")


vim.keymap.set({ "n", "i", "v" }, "<C-b>", function()
  vim.schedule(function()
    vim.cmd("Neotree toggle")
  end)
end, { silent = true })

map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")


map("v", "<C-c>", '"+y')
map("n", "<C-v>", '"+p')
map("i", "<C-v>", '<C-r>+')
map("n", "<C-a>", "ggVG")

map("n", "<leader>ss", ":SSHFSConnect<CR>")
map("n", "<leader>sd", ":SSHFSDisconnect<CR>")

map("n", "<leader>aa", ":SSHFSConnect<CR>")
map("n", "<leader>sd", ":SSHFSDisconnect<CR>")