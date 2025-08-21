return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		--"leoluz/nvim-dap-go",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		require("dapui").setup()
		-- Python configuration with args for relative imports
		dap.configurations.python = {
			{
				type = "python",
				request = "launch",
				name = "Launch file",
				program = "${file}",
			},
			{
				type = "python",
				request = "launch",
				name = "Launch module (relative imports)",
				module = function()
					return vim.fn.input("Module name: ")
				end,
				cwd = "${workspaceFolder}",
			},
		}

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.open()
		end
	end,
}
