local M = {}

M.parse_fixtures = function (fixture_output)
  -- TODO: start parse after collected items line
  for idx, line in ipairs(fixture_output) do
    vim.print(idx .. ": " .. line)
  end
end

return M
