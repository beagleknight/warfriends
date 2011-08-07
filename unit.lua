--[[
  Class Unit
]]

local Unit = {}

function Unit:new(o)
  o = o or {
    pos = { x = 0, y = 0 },
    minis_per_row = 1,
    minis_per_col = 1
  }
  setmetatable(o, self)
  self.__index = self

  return o
end

function Unit:draw()
  love.graphics.quad("fill",
    self.pos.x,self.pos.y,
    self.pos.x+self.width*self.minis_per_row,self.pos.y,
    self.pos.x+self.width*self.minis_per_row,self.pos.y+self.height*self.minis_per_col,
    self.pos.x,self.pos.y+self.height*self.minis_per_col
  )
end

return Unit
