local json = require("libs/json")

local GameRepository = {}

local players = {}

function GameRepository:store_player(player_entity)
    table.insert(players, player_entity)
    print('Stored '..json.encode(player_entity))
end

function GameRepository:update_player(player_entity)
    for i, entity in ipairs(players) do
      if players.usgn == player_entity.usgn then
        entity:update(player_entity)
        return
      end
    end
end


function GameRepository:get_player(usgn)
    for i, entity in ipairs(players) do
        print(entity.usgn)
      if entity.usgn == usgn then
        return entity
      end
    end
end

return GameRepository