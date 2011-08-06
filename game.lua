--[[
  Module Game
]]

local game = {
  engine = {},
  status = 'unitialized',
  players = {},
}

function game:init(engine) 
  -- Load game engine
  self.engine = engine

  -- Load players
  local p1 = require 'player'
  local p2 = require 'player'
  table.insert(self.players,p1)
  table.insert(self.players,p2)

  self.status = 'initialized'
end

function game:update(dt)
end

function game:draw()
  self.engine.graphics.circle("fill", 300, 300, 50)
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
