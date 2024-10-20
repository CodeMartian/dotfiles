local km = vim.keymap

km.set("n", "<C-s>", ":w<cr>") -- Save

-- Telescope
km.set("n", "<leader>ff", ":Telescope find_files<cr>") -- Find files
km.set("n", "<leader>fg", ":Telescope live_grep<cr>") -- Find string
km.set("n", "<leader>td", ":TodoTelescope<cr>") -- Find TODOS
km.set("n", "<leader>b", ":Telescope buffers<cr>") -- List buffers
km.set("n", "<leader>p", "<cmd>Telescope registers<cr>")

-- Neotree
km.set("n", "<leader>fb", "<cmd>Neotree float<cr>") -- Open file browser
km.set("n", "<leader>s", ":Neotree left<cr>")
km.set("n", "<leader>S", ":Neotree close left<cr>")

-- Floating Help
km.set("n", "<leader>h", ":FloatingHelpToggle<cr>")
