-- main.lua

local rooms = require("rooms")  -- Correctly require rooms.lua
local game_utils = require("game_utils")

local current_room = "livingroom"  -- Starting room

-- Load images
local images = {}
images.livingroom = love.graphics.newImage("images/livingroom.jpg")
images.bedroom = love.graphics.newImage("images/bedroom.jpg")
images.toilet = love.graphics.newImage("images/toilet.jpg")

-- LÖVE initialization
function love.load()
    love.window.setTitle("Adventure Game with Graphics")
    love.window.setMode(800, 600)  -- Window size
end

-- Update and draw the game each frame
function love.update(dt)
    -- This could be used for any dynamic elements (e.g., animations or timers)
end

function love.draw()
    -- Draw the background image based on the current room
    if current_room == "livingroom" then
        love.graphics.draw(images.livingroom, 0, 0)
    elseif current_room == "bedroom" then
        love.graphics.draw(images.bedroom, 0, 0)
    elseif current_room == "toilet" then
        love.graphics.draw(images.toilet, 0, 0)
    end

    -- Display room description
    love.graphics.setColor(1, 1, 1)  -- Set color for text (white)
    love.graphics.print("You are in the " .. current_room .. ".", 10, 10)
    love.graphics.print("Where do you want to go? (north, south, east, west)", 10, 30)
end

-- Handle keyboard input for movement
function love.keypressed(key)
    if key == "n" then  -- 'n' for north
        current_room = game_utils.move_to_room(rooms, current_room, "north")
    elseif key == "s" then  -- 's' for south
        current_room = game_utils.move_to_room(rooms, current_room, "south")
    elseif key == "e" then  -- 'e' for east
        current_room = game_utils.move_to_room(rooms, current_room, "east")
    elseif key == "w" then  -- 'w' for west
        current_room = game_utils.move_to_room(rooms, current_room, "west")
    end
end

