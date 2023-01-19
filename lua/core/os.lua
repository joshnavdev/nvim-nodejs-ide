M = {}

M.setup = function ()
  if IS_MAC == 1 then
    vim.opt.clipboard:append { "unnamedplus" }
    vim.o.shell = "/opt/homebrew/bin/zsh"
  elseif IS_WIN == 1 then
    vim.opt.clipboard:prepend { "unnamed", "unnamedplus" }
    vim.o.shell = "/usr/bin/zsh"
  end
end

return M
