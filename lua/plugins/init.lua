local ensure_packer = function ()
  local fn = vim.fn
  local cmd = vim.cmd
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    print "Installing Packer..."

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })

    cmd "packadd packer.nvim"
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

local plugins = require("plugins.configs").plugins_init(packer_bootstrap)
local packer_config = require("plugins.configs.others").packer_init()

require("packer").startup({ plugins, config = packer_config })
