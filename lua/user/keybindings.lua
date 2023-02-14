local M = {}

local function set_bufferline_keymaps()
  lvim.keys.normal_mode["<S-x>"] = "<Cmd>lua require('user.bufferline').delete_buffer()<CR>"
  lvim.keys.normal_mode["<S-l>"] = "<Cmd>BufferLineCycleNext<CR>"
  lvim.keys.normal_mode["<S-h>"] = "<Cmd>BufferLineCyclePrev<CR>"
  lvim.keys.normal_mode["[b"] = "<Cmd>BufferLineMoveNext<CR>"
  lvim.keys.normal_mode["]b"] = "<Cmd>BufferLineMovePrev<CR>"
  lvim.builtin.which_key.mappings["c"] = {}
  lvim.builtin.which_key.mappings.b = {
      name = " 﩯Buffer",
      ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "goto 1" },
      ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "goto 2" },
      ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "goto 3" },
      ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "goto 4" },
      ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "goto 5" },
      ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "goto 6" },
      ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "goto 7" },
      ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "goto 8" },
      ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "goto 9" },
      c = { "<Cmd>BufferLinePickClose<CR>", "delete buffer" },
      p = { "<Cmd>BufferLineTogglePin<CR>", "toggle pin" },
      s = { "<Cmd>BufferLinePick<CR>", "pick buffer" },
      t = { "<Cmd>BufferLineGroupToggle docs<CR>", "toggle groups" },
      f = { "<cmd>Telescope buffers<cr>", "Find" },
      b = { "<cmd>b#<cr>", "Previous" },
      h = { "<cmd>BufferLineCloseLeft<cr>", "Close all to the left" },
      l = {
          "<cmd>BufferLineCloseRight<cr>",
          "Close all to the right",
      },
      D = {
          "<cmd>BufferLineSortByDirectory<cr>",
          "Sort by directory",
      },
      L = {
          "<cmd>BufferLineSortByExtension<cr>",
          "Sort by language",
      },
  }
end

M.config = function()
  lvim.builtin.which_key.mappings["H"] = " Help"
  lvim.keys.insert_mode["<A-a>"] = "<ESC>ggVG<CR>"
  lvim.keys.insert_mode["jk"] = "<ESC>:w<CR>"
  lvim.builtin.which_key.mappings.g.name = "  Git"
  lvim.builtin.which_key.mappings.l.name = "  LSP"
  lvim.builtin.which_key.mappings["F"] = {
      name = "  Find",
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
  lvim.builtin.which_key.mappings["f"] = {
      require("user.telescope").find_project_files,
      " Find File",
  }
  lvim.keys.normal_mode["<Space>bs"] = "<C-w>s"
  lvim.keys.normal_mode["<Space>bv"] = "<C-w>v"

end

return M
