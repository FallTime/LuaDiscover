local love = require "love"
local Enemy = require "Enemy"
local Button = require "Button"

math.randomseed(os.time())

game = {
    difficulty = 1,
    state = {
        menu = true,
        paused = false,
        running = false,
        ended = false
    }
}

player = {
   radius = 20,
   x = 30,
   y = 30
}

buttons = {
    menu_state = {}
}

enemies = {}

function startNewGame()
    game.state["menu"] = false
    game.state["running"] = true

    table.insert(enemies, 1, Enemy())
end

function love.mousepressed(x, y, button, istouch, presses)
    if not game.state["running"] then
        if button == 1 then
            if game.state["menu"] then
                for index in pairs(buttons.menu_state) do
                    buttons.menu_state[index]:checkPressed(x, y, player.radius)
                end
            end
        end
    end
end

function love.keypressed(key, scancode, isrepeat)
    if key == "space" then
        number = number + 1
    end
    if key == "escape" then
        love.event.quit()
    end
end

function love.load()
    menu_button_width = 120
    menu_button_height = 40
    
    love.mouse.setVisible(false)
    love.keyboard.setKeyRepeat(true)
    
    buttons.menu_state.play_game = Button("Play Game", startNewGame, nil, menu_button_width, menu_button_height)
    buttons.menu_state.settings = Button("Settings", nil, nil, menu_button_width, menu_button_height)
    buttons.menu_state.exit_game = Button("Exit", love.event.quit, nil, menu_button_width, menu_button_height)
    
    number = 0
end

function love.update()
    player.x, player.y = love.mouse.getPosition()

    if game.state["running"] then
        for i = 1, #enemies do
            enemies[i]:move(player.x,player.y)
        end
    end
end

function love.draw()
    love.graphics.print(number)
    
    love.graphics.printf(
        "FPS: " .. love.timer.getFPS(), 
        love.graphics.newFont(16), 
        10, 
        love.graphics.getHeight() - 30,
        love.graphics.getWidth()
    )

if game.state["running"] then
    for i = 1, #enemies do
        enemies[i]:draw()
    end

    love.graphics.circle("fill", player.x, player.y, player.radius)

elseif game.state["menu"] then
    buttons.menu_state.play_game:draw(10, 20, menu_button_width/4, menu_button_height/2 - 10)
    buttons.menu_state.settings:draw(10, 70, menu_button_width/4, menu_button_height/2 - 10)
    buttons.menu_state.exit_game:draw(10, 120, menu_button_width/4, menu_button_height/2 - 10)

end

if not game.state["running"] then
    love.graphics.circle("fill", player.x, player.y, player.radius/2)
end

end
