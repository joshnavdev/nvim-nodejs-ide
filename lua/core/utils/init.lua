local utils = {}

utils.table_has_value = function (tab, val)
  for _, tab_val in pairs(tab) do
    if tab_val == val then
      return true
    end
  end

  return false
end

return utils
