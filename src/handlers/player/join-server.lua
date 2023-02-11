local PlayerStorage = require("src/services/player/player-storage")

function onPlayerJoinServer(id)
    local usgn = player(id,'usgn')
    PlayerStorage:load(usgn)
end


addhook('join', 'onPlayerJoinServer')