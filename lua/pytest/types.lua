---@meta
--- This is a simple "definition file" (https://luals.github.io/wiki/definition-files/),
--- the @meta tag at the top is its hallmark.

-- lua/pytest/init.lua -----------------------------------------------------------

---@class pytest
---@field setup function: setup the plugin
---@field hello function: Say hello to the user
---@field bye function: Say bye to the user

-- lua/pytest/config.lua ---------------------------------------------------------

---@class Config
---@field defaults Options: default options
---@field options Options: user options
---@field setup function: setup the plugin

---@class UserOptions
---@field name? string: The name of the user

---@class DefaultOptions
---@field name string: The name of the user

---@class Options
---@field name string: The name of the user

---@class fixture
---@field name string: The name of the fixture
---@field path string: Path to the fixture
---@field doc string: Python docstring
