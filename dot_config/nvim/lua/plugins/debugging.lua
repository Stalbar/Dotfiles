return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup({})
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    dap.adapters.coreclr = {
      type = "executable",
      command = "/usr/bin/netcoredbg",
      args = { "--interpreter=vscode" },
    }

    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - netcoredbg",
        request = "launch",
        program = function()
          return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file")
        end,
      },
    }

    dap.adapters.dart = {
      type = "executable",
      command = "flutter",
      args = { "debug_adapter" },
    }

    dap.configurations.dart = {
      {
        type = "dart",
        request = "launch",
        name = "Launch Flutter Program",
        rpgram = "${file}",
        cwd = "${workspaceFolder}",
        toolArgs = { "-d", "linux" },
      }
    }

    vim.keymap.set("n", "<leader>dtb", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
  end,
}
