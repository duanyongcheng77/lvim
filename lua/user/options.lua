local M = {}

M.config = function ()
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


end

return M
