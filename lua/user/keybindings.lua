local M = {}

M.config = function()
  lvim.builtin.which_key.mappings["H"] = " Help"
  lvim.builtin.which_key.mappings["F"] = {
      name = " Find",
      b = { "<cmd>lua require('user.telescope').builtin()<cr>", "Builtin" },
      f = { "<cmd>lua require('user.telescope').curbuf()<cr>", "Current Buffer" },
      g = { "<cmd>lua require('user.telescope').git_files()<cr>", "Git Files" },
      i = { "<cmd>lua require('user.telescope').installed_plugins()<cr>", "Installed Plugins" },
      l = {
          "<cmd>lua require('telescope.builtin').resume()<cr>",
          "Last Search",
      },
      p = { "<cmd>lua require('user.telescope').project_search()<cr>", "Project" },
      s = { "<cmd>lua require('user.telescope').git_status()<cr>", "Git Status" },
      z = { "<cmd>lua require('user.telescope').search_only_certain_files()<cr>", "Certain Filetype" },
  }
end

return M
