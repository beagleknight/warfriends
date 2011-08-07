--[[
  Class Player
]]

local Player = {}

function Player:new(o)
  o = o or {}
  setmetatable(o, self)
  self.__index = self

  self.army = {}

  return o
end

function Player:loadArmy(army)
  self.army = require(army)
end

function Player:drawArmy()
  for name, unit in pairs(self.army) do
    unit:draw()
  end
end

return Player
