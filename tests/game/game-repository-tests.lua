local Colors = require("sys/lua/src/utils/colors")

print(""..Colors['purple'].."Running Game Repository Tests")

local Test = require("sys/lua/libs/test")
local Player = require("sys/lua/src/core/entities/player-entity")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function make_player_entity(data)
    return Player:new(data)
end

--
t1 = Test:describe("This has to store a player and fetch it")
local mock_player = make_entity({
    usgn = 123,
    level = 2
})

GameRepository:store_player(mock_player)

local player = GameRepository:get_player(123)

Test:isEqual(player.level , 2 , t1)

--

--
t2 = Test:describe("This has to delete a player stored")

GameRepository:delete_player(123)

local player = GameRepository:get_player(123)

Test:isEqual(player , nil , t2)
--
