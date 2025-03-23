-- game_utils.lua

local function describe_room(rooms, current_room)
    print(rooms[current_room].description)
end

local function move_to_room(rooms, current_room, direction)
    if rooms[current_room][direction] then
        local new_room = rooms[current_room][direction]
        print("You move to the " .. new_room)
        return new_room
    else
        print("You can't go that way!")
        return current_room
    end
end

return {
    describe_room = describe_room,
    move_to_room = move_to_room,
}

