local Player = require("src/core/entities/player-entity")

json = require("libs/json")


local PlayerRepository = {}

function PlayerRepository:save(player_entity)
    if (player_entity.usgn <= 0) then
        return
    end
    
    local data = json.encode(player_entity)

    local file, err = io.open('sys/lua/data/'..player_entity.usgn..'.json', 'w')

    if file then
        file:write(data)
        file:close()
    else
        print("Error on saving player "..err)
    end
end

function PlayerRepository:load(player_usgn)
    local file = io.open('sys/lua/data/'..player_usgn..'.json', 'r')

    if not file then
        return
    end

    local contents = file:read("*all")
    file:close()

    return Player:new(json.decode(contents))
end

return PlayerRepository