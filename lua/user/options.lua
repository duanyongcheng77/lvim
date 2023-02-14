local M = {}

M.config = function()
  -- general
  lvim.log.level = "warn"
  lvim.format_on_save.enabled = false
  lvim.colorscheme = "tokyonight"
  -- to disable icons and use a minimalist setup, uncomment the following
  -- lvim.use_icons = false

  -- keymappings [view all the defaults by pressing <leader>Lk]
  lvim.leader = "space"
  -- add your own keymapping
  lvim.keys.normal_mode["<C-s>"] = ":w<cr>"

  vim.opt.relativenumber = true
  -- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
  lvim.builtin.alpha.active = true
  lvim.builtin.alpha.mode = "dashboard"
  lvim.builtin.terminal.active = true
  lvim.builtin.nvimtree.setup.view.side = "left"
  lvim.builtin.nvimtree.setup.renderer.icons.show.git = false
  lvim.builtin.winbar_provider = "filename" -- can be "filename" or "treesitter" or "navic" or ""
  if lvim.builtin.winbar_provider == "navic" then
    vim.opt.showtabline = 1
    lvim.keys.normal_mode["<tab>"] =
    "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false, initial_mode='normal'})<cr>"
    lvim.builtin.bufferline.active = false
    lvim.builtin.breadcrumbs.active = true
  end
end

return M
