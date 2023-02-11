local Colors = require("sys/lua/src/utils/colors")

print(""..Colors['purple'].."Running Player Repository Tests")

local Test = require("sys/lua/libs/test")
local Player = require("sys/lua/src/core/entities/player-entity")
local PlayerRepository = require("src/adapters/storage/player/player-repository")

function make_player_entity(data)
    return Player:new(data)
end

--
t1 = Test:describe("This has to save a user data and load it")
local mock_player = make_entity({
    usgn = 1,
    level = 2
})

PlayerRepository:save(mock_player)

local player_loaded = PlayerRepository:load(1)

Test:isEqual(player_loaded.level, 2, t1)

os.remove("sys/lua/data/1.json")

--