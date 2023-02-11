local Colors = require("sys/lua/src/utils/colors")

print(""..Colors['purple'].."Running Player Entity Tests")

local Test = require("sys/lua/libs/test")
local Player = require("sys/lua/src/core/entities/player-entity")

function make_entity(data)
    return Player:new(data)
end

--
t1 = Test:describe("This has to create an entity and returns level 5")
local mock_player = make_entity({
    level = 5
})
Test:isEqual(mock_player.level , 5 , t1)
--

--
t2 = Test:describe("This has to create an entity with 5 exp and has to be different than 6")
local mock_player = make_entity({
    exp = 5
})
Test:isDifferent(mock_player.exp, 6, t2)
--