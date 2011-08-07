--[[
  Module Game
]]

local Player = require 'player'

local game = {
  engine = {},
  status = 'unitialized',
  players = {},
  turn = 1
}

function game:init(engine) 
  -- Load game engine
  self.engine = engine

  -- Load players
  local p1 = Player:new()
  p1:loadArmy("armies/lizardmen/test")
  table.insert(self.players,p1)
  local p2 = Player:new()
  p2:loadArmy("armies/dwarfs/test")
  table.insert(self.players,p2)

  -- End initialization
  self.status = 'initialized'
end

function game:update(dt)
end

function game:draw()
  self.players[1]:drawArmy()
  self.players[2]:drawArmy()
end

function game:mousepressed(x,y,button)
end

function game:mousereleased(x,y,button)
end

function game:keypressed(key, unicode)
  if key == 'escape' then
    self.engine.event.push('q') -- quit the game
  end 
end

function game:keyreleased(key, unicode)
end

function game:focus(f)
end

function game:quit()
end

return game
