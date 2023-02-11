local PlayerStorage = require("src/services/player/player-storage")

function onPlayerLeaveServer(id)
    local usgn = player(id,'usgn')
    if (usgn > 0) then
        PlayerStorage:save(usgn)
    end
end


addhook('leave', 'onPlayerLeaveServer')