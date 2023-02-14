local PlayerStorage = require("src/services/player/player-storage")

function onPlayerJoinServer(id)
    local usgn = player(id,'usgn')
    local _player = PlayerStorage:load(usgn, id)
end


addhook('join', 'onPlayerJoinServer')