local Job = require("plenary.job")
local parser = require("pytest.parser")

---@type fixture[]
local fixtures = {}

local M = {}

---Setup the pytest plugin
---@param opts UserOptions: plugin options
M.setup = function(opts)
  require("pytest.config").setup(opts)
end

---Say hello to the user
---@return string: message to the user
M.fixtures = function()
  local root_cwd = vim.lsp.buf.list_workspace_folders()
  if root_cwd[1] then
    local job = Job:new({
      command = "pytest",
      args = { "--fixtures", "-v" },
      cwd = root_cwd[1],
    })

    job:after_success(function(j, return_val)
      parser.parse_fixtures(j:result())
    end)

    job:sync()
  end
  return root_cwd
end

---Say bye to the user
---@return string: message to the user
M.bye = function()
  local str = "Bye " .. require("pytest.config").options.name
  vim.print(str)
  return str
end

return M
