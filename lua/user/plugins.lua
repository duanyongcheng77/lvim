local M = {}

M.config = function()
  lvim.plugins = {
      -- {
      --     "rose-pine/neovim",
      --     name = "rose-pine",
      --     config = function()
      --       require("user.theme").rose_pine()
      --       lvim.colorscheme = "rose-pine"
      --     end,
      --     cond = function()
      --       local _time = os.date "*t"
      --       return (_time.hour >= 1 and _time.hour < 9) and lvim.builtin.time_based_themes
      --     end,
      -- },
      {
          "ggandor/leap.nvim",
          config = function()
            require("user.leap").config()
          end,
          enabled = lvim.builtin.motion_provider == "leap",
      },
      -- 多光标插件
      {
          "mg979/vim-visual-multi"
      },
      -- {
      --     "skywind3000/asynctasks.vim",
      --     dependencies = {
      --         { "skywind3000/asyncrun.vim" },
      --     },
      --     init = function()
      --       vim.cmd [[
      --     let g:asyncrun_open = 8
      --     let g:asynctask_template = '~/.config/lvim/task_template.ini'
      --     let g:asynctasks_extra_config = ['~/.config/lvim/tasks.ini']
      --   ]]
      --     end,
      --     event = { "BufRead", "BufNew" },
      --     enabled = lvim.builtin.task_runner == "async_tasks",
      -- },
      -- {
      --     "b0o/incline.nvim",
      --     config = function()
      --       require("user.incline").config()
      --     end,
      --     enabled = lvim.builtin.winbar_provider == "filename",
      -- },
      -- {
      --     "fgheng/winbar.nvim",
      --     config = function()
      --       require("user.winb").config()
      --     end,
      --     event = { "InsertEnter", "CursorHoldI" },
      --     enabled = lvim.builtin.winbar_provider == "treesitter",
      -- },
      -- {
      --     "SmiteshP/nvim-gps",
      --     module_pattern = { "gps", "nvim-gps" },
      --     config = function()
      --       require("user.gps").config()
      --     end,
      --     dependencies = "nvim-treesitter/nvim-treesitter",
      --     event = { "InsertEnter", "CursorHoldI" },
      --     enabled = lvim.builtin.winbar_provider == "treesitter",
      -- },
  }
end

return M
