local Colors = require("sys/lua/src/utils/colors")

print(""..Colors['purple'].."Running Player Level Tests")

local Test = require("sys/lua/libs/test")
local Player = require("sys/lua/src/core/entities/player-entity")
local PlayerLevel = require("src/services/player/player-level")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function make_entity(data)
    return Player:new(data)
end

--
t1 = Test:describe("This has to create an entity and makes it level 0")
local mock_player = make_entity({
    level = 0,
    exp = 0,
    reach_exp = 15,
    usgn = 1
})



Test:isEqual(mock_player.level , 0 , t1)
--

--
t2 = Test:describe("This has to add 15 exp to entity and it has to become an level 1")
local mock_player = make_entity({
    level = 0,
    exp = 0,
    reach_exp = 15,
    usgn = 1
})

_player = PlayerLevel:addExp(mock_player, 15)


Test:isEqual(_player.level, 1, t2)

GameRepository:delete_player(1)
--