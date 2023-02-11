local PlayerHuds = require("src/services/player/player-huds")
local PlayerStorage = require("src/services/player/player-storage")

function onPlayerJoinServer(id)
    local usgn = player(id,'usgn')
    local _player = PlayerStorage:load(usgn)

    PlayerHuds:level_system(id, _player)
end


addhook('join', 'onPlayerJoinServer')