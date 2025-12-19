function love.load()
    dx, dy = 0, 0 
    width = love.graphics.getWidth( )
    height = love.graphics.getHeight( )
end

function love.update(dt)
    seconds = love.timer.getTime( )
    
    if love.keyboard.isDown("s") then
        dy = dy + 1
    end
    if love.keyboard.isDown("w") then
        dy = dy - 1
    end

end

function love.keypressed( key, scancode, isrepeat )
   if key == "escape" then
        love.event.quit()
   end

   if key == "f" then
        fullscreen = not fullscreen
        love.window.setFullscreen(fullscreen, "desktop")
        width = love.graphics.getWidth( )
        height = love.graphics.getHeight( )    
   end
   
end


function love.draw()
    love.graphics.rectangle("fill", 10, dy, width/60, height/4)
    love.graphics.print(dx .. dy, 50, 50)
end

