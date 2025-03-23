-- rooms.lua

local rooms = {
    livingroom = {
        description = "You are in a cozy living room. There is a door to the north.",
        north = "bedroom",  -- Moving north takes you to the bedroom
        east = " toilet",   -- Moving east takes you to the toilet
        south = "livingroom",  -- Moving south takes you to the bedroom
    },
    bedroom = {
        description = "You are in a peaceful bedroom. There is a door to the south and east.",
        south = "livingroom",  -- Moving south takes you back to the living room
        east = "toilet",       -- Moving east takes you to the toilet
        west = "bedroom",      -- Moving west takes you back to the bedroom
    },
    toilet = {
        description = "You are in a small toilet. There is a door to the west.",
        west = "bedroom",      -- Moving west takes you to the bedroom
        south = "livingroom",      -- Moving south takes you back to the
    }
}

return rooms

