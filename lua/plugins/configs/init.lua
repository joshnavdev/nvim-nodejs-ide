local M = {}

M.plugins_init = function (packer_boostrap)
  return function (use)
    use "wbthomason/packer.nvim" -- To use packer

    -- My plugins
    use {
      "kyazdani42/nvim-web-devicons",
      config = function ()
        require "plugins.configs.web-devicons"
      end
    }

    use {
      "alexghergh/nvim-tmux-navigation",
      config = function ()
        require "plugins.configs.tmux-navigation"
      end
    }

    use {
      "windwp/nvim-autopairs",
      config = function ()
        require "plugins.configs.autopairs"
      end
    }

    use {
      "terrortylor/nvim-comment",
      config = function ()
        require "plugins.configs.comment"
      end
    }

    use {
      "lewis6991/gitsigns.nvim",
      config = function ()
        require "plugins.configs.gitsigns"
      end
    }

    -- UI
    use {
      "akinsho/nvim-bufferline.lua",
      tag = "v3.*",
      wants = "nvim-web-devicons",
      config = function ()
        require "plugins.configs.bufferline"
      end
    }

    use {
      "hoob3rt/lualine.nvim",
      wants = "nvim-web-devicons",
      config = function ()
        require "plugins.configs.lualine"
      end
    }

    use {
      "themercorp/themer.lua",
      config = function ()
        require "plugins.configs.themer"
      end
    }

    -- Sync the plugins if it is a boostrap
    if packer_boostrap then
      require("packer").sync()
    end
  end
end

return M
