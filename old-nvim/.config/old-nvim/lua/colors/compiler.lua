local cache_path = "/home/sugan/.config/nvim/lua/cached/compiled_taake.lc"
local src_file =  "/home/sugan/.config/nvim/lua/colors/taake.lua"

local function compile()
  local f = io.open(src_file, "r")
  if not f then
    vim.notify("Colorscheme source file not found!", vim.log.levels.ERROR)
    return
  end

  local content = f:read("*a")
  f:close()

  local wrapped = "return string.dump(function()\n" .. content .. "\nend, true)"
  local chunk = loadstring(wrapped)

  if not chunk then
    vim.notify("Failed to compile colorscheme", vim.log.levels.ERROR)
    return
  end

  local out = io.open(cache_path, "wb")
  out:write(chunk())
  out:close()

  vim.notify("✅ Colorscheme compiled!", vim.log.levels.INFO)
end

return compile
