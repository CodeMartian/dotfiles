local km = vim.keymap

km.set("n", "<C-s>", ":w<cr>") -- Save

-- Telescope
km.set("n", "<leader>ff", ":Telescope find_files<cr>") -- Find files
km.set("n", "<leader>fg", ":Telescope live_grep<cr>") -- Find string
km.set("n", "<leader>td", ":TodoTelescope<cr>") -- Find TODOS
km.set("n", "<leader>b", ":Telescope buffers<cr>") -- List buffers
km.set("n", "<leader>p", "<cmd>Telescope registers<cr>")
km.set("n", "<leader>h", ":Telescope help_tags<cr>")

-- Neotree
km.set("n", "<leader>fb", "<cmd>Neotree float<cr>") -- Open file browser
km.set("n", "<leader>s", ":Neotree left<cr>")
km.set("n", "<leader>S", ":Neotree close left<cr>")

-- Floating Help
-- rustaceanvim
km.set("n", "<leader>.", ":RustLsp codeAction<cr>")

-- DAP
km.set("n", "<C-F5>", ":RustLsp debug<cr>")
km.set("n", "<F5>", function()
	require("dap").continue()
end)
km.set("n", "<F10>", function()
	require("dap").step_over()
end)
km.set("n", "<F11>", function()
	require("dap").step_into()
end)
km.set("n", "<F12>", function()
	require("dap").step_out()
end)
km.set("n", "<Leader>db", function()
	require("dap").toggle_breakpoint()
end)
km.set("n", "<Leader>dlp", function()
	require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
end)
km.set("n", "<Leader>dr", function()
	require("dap").repl.open()
end)
km.set("n", "<Leader>dl", function()
	require("dap").run_last()
end)
km.set({ "n", "v" }, "<Leader>dh", function()
	require("dap.ui.widgets").hover()
end)
km.set({ "n", "v" }, "<Leader>dp", function()
	require("dap.ui.widgets").preview()
end)
km.set("n", "<Leader>df", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.frames)
end)
km.set("n", "<Leader>ds", function()
	local widgets = require("dap.ui.widgets")
	widgets.centered_float(widgets.scopes)
end)

-- Neotest
km.set("n", "<C-;><C-r>", function()
	require("neotest").run.run()
end)
km.set("n", "<C-;><C-f>", function()
	require("neotest").run.run(vim.fn.expand("%"))
end)
km.set("n", "<C-;><C-w>", function()
	require("neotest").watch.watch(vim.fn.expand("%"))
end)
km.set("n", "<C-;><C-l>", function()
	require("neotest").run.run_last()
end)
km.set("n", "<C-;><C-d>", function()
	require("neotest").run.run({ strategy = "dap" })
end)
