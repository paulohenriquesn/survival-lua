local PlayerHuds = require("src/services/player/player-huds")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function onPlayerSpawn(id)
    local _player = GameRepository:get_player(player(id,'usgn'))
    PlayerHuds:load(id, _player)
end


addhook('spawn', 'onPlayerSpawn')