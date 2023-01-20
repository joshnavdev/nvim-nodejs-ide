local status, themer = pcall(require, "themer")
if (not status) then return end

themer.setup({
  -- colorscheme = "nord",
  transparent = false,
  styles = {
    comment = { style = "italic" },
    keyword = { style = "italic,bold" },
  },
  enable_installer = true,
})

-- Configure initial theme - nordfox (this is not in Themer)
local utils = require "core.utils"
local cmd = vim.cmd
local fn = vim.fn
local nightfox_themer_path = fn.stdpath("data") .. "/themer/nightfox.nvim"
local group_name = "ThemerInit"
local nightfox_theme = "EdenEast/nightfox.nvim"

local create_themer_autocmd = function ()
  vim.api.nvim_create_autocmd("ChanOpen", {
    group = vim.api.nvim_create_augroup(group_name, {}),
    callback = function ()
      local chans = vim.api.nvim_list_chans()
      local themer_job_id

      for _, value in ipairs(chans) do
        local correct_job_argv = "https://github.com/" .. nightfox_theme
        local is_themer_job = value.argv ~= nil and utils.table_has_value(value.argv, correct_job_argv)

        if is_themer_job then
          themer_job_id = value.id
          break
        end
      end

      if themer_job_id ~= nil then
        fn.jobwait({ themer_job_id })
        vim.api.nvim_del_augroup_by_name(group_name)
        require("themer.modules.installer.load_installed").load_installed_themes()
        vim.schedule(function ()
          cmd [[colorscheme nordfox]]
          cmd [[colorscheme nordfox]]
        end)
      end
    end,
    once = true,
  })
end

if fn.empty(fn.glob(nightfox_themer_path)) > 0 then
  create_themer_autocmd()

  local themer_installer_utils = require "themer.modules.installer.utils"
  themer_installer_utils.install(nightfox_theme)
else
  cmd [[colorscheme nordfox]]
end
