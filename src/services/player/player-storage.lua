local Player = require("src/core/entities/player-entity")
local PlayerRepository = require("src/adapters/storage/player/player-repository")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

local PlayerStorage = {}

function PlayerStorage:save(usgn)
    if (usgn > 0) then
        local player = GameRepository:get_player(usgn)
        PlayerRepository:save(player)
    end
end


function PlayerStorage:load(usgn)
    local player = PlayerRepository:load(usgn)
    
    if (player == nil) then
        player = Player:new({
            id = id,
            money = 0,
            level = 0,
            exp = 0,
            usgn = usgn
        })
    end

    GameRepository:store_player(player)
end

return PlayerStorage