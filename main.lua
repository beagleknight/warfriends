-- Load resources. Called once
function love.load()
end

-- Is called continuosly. Update game
function love.update(dt)
end

-- Is called continuosly. Draw game
function love.draw()
  love.graphics.triangle('line',100,100,200,200,100,300)
end

-- Called when a mouse button pressed
-- button := l,m,r,wd,wu,[x1,x2]??
function love.mousepressed(x, y, button)
end

-- Called when a mouse button released
function love.mousereleased(x, y, button)
end

-- Called when a key is pressed
function love.keypressed(key, unicode)
  if key == 'escape' then
    love.event.push('q') -- quit the game
  end 
end

-- Called when a key is released
function love.keyreleased(key, unicode)
end

-- Called when focus off or on window
function love.focus(f)
end

-- Called when closing game window
function love.quit()
end
