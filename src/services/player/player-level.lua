local GameRepository = require("src/adapters/storage/in-memory/game-repository")

local PlayerLevel = {}

function PlayerLevel:addExp(player_entity, exp)
    player_entity:update({
        exp = player_entity.exp + exp
    })

    if (player_entity.exp >= player_entity.reach_exp) then
        player_entity:update({
            level = player_entity.level + 1,
            exp = 0,
            reach_exp = player_entity.reach_exp + 30
        })
    end

    GameRepository:update_player(player_entity)
    return player_entity
end


return PlayerLevel