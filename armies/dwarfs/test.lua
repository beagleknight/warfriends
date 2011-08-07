--[[
  Test army for lizardmen
]]

local Unit = require 'unit'
local army = {}

table.insert(army, Unit:new({
  pos = { x = 100, y = 400 },
  minis_per_row = 5,
  minis_per_col = 4,
  width = 10,
  height =10 
}))

return army
