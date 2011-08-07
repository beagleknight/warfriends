--[[
  Class Player
]]

local Player = {}

function Player:new (o)
  o = o or {}   -- create object if user does not provide one
  setmetatable(o, self)
  self.__index = self

  self.army = {}

  return o
end

function Player:loadArmy(army)
  self.army = require(army)
end

function Player:drawArmy(engine)
  for name, unit in pairs(self.army) do
    engine.graphics.quad("line",
      unit.pos[1],unit.pos[2],
      unit.pos[1]+unit.width*unit.number,unit.pos[2],
      unit.pos[1]+unit.width*unit.number,unit.pos[2]+unit.height*unit.number/2,
      unit.pos[1],unit.pos[2]+unit.height*unit.number/2
    )
  end
end

return Player
