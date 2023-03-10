local json = require("libs/json")

local GameRepository = {}

local players = {}

function GameRepository:store_player(player_entity)
    table.insert(players, player_entity)
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
      if entity.usgn == usgn then
        return entity
      end
    end
end

function GameRepository:get_player_by_id(id)
  for i, entity in ipairs(players) do
    if entity.id == id then
      return entity
    end
  end
end


function GameRepository:delete_player(usgn)
  for i, entity in ipairs(players) do
    if entity.usgn == usgn then
      table.remove(players, i)
      return
    end
  end
end

return GameRepository