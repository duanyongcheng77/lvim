local M = {}

M.config = function()
  lvim.plugins = {
      {
          "ggandor/leap.nvim",
          config = function()
            require("user.leap").config()
          end,
          enabled = lvim.builtin.motion_provider == "leap",
      },
      {
          "skywind3000/asynctasks.vim",
          dependencies = {
              { "skywind3000/asyncrun.vim" },
          },
          init = function()
            vim.cmd [[
          let g:asyncrun_open = 8
          let g:asynctask_template = '~/.config/lvim/task_template.ini'
          let g:asynctasks_extra_config = ['~/.config/lvim/tasks.ini']
        ]]
          end,
          event = { "BufRead", "BufNew" },
          enabled = lvim.builtin.task_runner == "async_tasks",
      },
  }
end

return M
