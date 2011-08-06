--[[
  Delegates all stuff to game module
]]

local game = require 'game'

function love.load()
  game:init(love)
end

function love.update(dt)
  game:update(dt)
end

function love.draw()
  game:draw()
end

function love.mousepressed(x, y, button)
  game:mousepressed(x,y,button)
end

function love.mousereleased(x, y, button)
  game:mousereleased(x,y,button)
end

function love.keypressed(key, unicode)
  game:keypressed(key,unicode)
end

function love.keyreleased(key, unicode)
  game:keyreleased(key,unicode)
end

function love.focus(f)
  game:focus(f)
end

function love.quit()
  game:quit()
end
