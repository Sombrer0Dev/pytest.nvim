local pytest = require("pytest")


-- Test pytest.nvim with default options
describe("Default options", function()
  pytest.setup({})
  it("can say hello", function()
    assert.are.equal("Hello John Doe", pytest.hello())
  end)
  it("can say bye", function()
    assert.are.equal("Bye John Doe", pytest.bye())
  end)
end)

-- Test pytest.nvim with user defined options
describe("User defined options", function()
  pytest.setup({ name = "John Smith" })
  it("can say hello", function()
    assert.are.equal("Hello John Smith", pytest.hello())
  end)
  it("can say bye", function()
    assert.are.equal("Bye John Smith", pytest.bye())
  end)
end)


-- RESOURCES:
--   - https://github.com/lunarmodules/busted
--   - https://hiphish.github.io/blog/2024/01/29/testing-neovim-plugins-with-busted/
