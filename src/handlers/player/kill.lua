local PlayerHuds = require("src/services/player/player-huds")
local PlayerLevel = require("src/services/player/player-level")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function onPlayerKill(id)
    local _player = GameRepository:get_player(player(id,'usgn'))
    _player = PlayerLevel:addExp(_player)
    PlayerHuds:update(id, _player)
end


addhook('kill', 'onPlayerKill')