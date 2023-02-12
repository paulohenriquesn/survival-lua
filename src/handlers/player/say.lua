local Colors = require("sys/lua/src/utils/colors")

local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function onPlayerSay(id, message)
    local usgn = player(id,'usgn')
    local _player = GameRepository:get_player(usgn)

    message = string.gsub(message,"@C", "")

    msg(''..Colors['orange']..'['.._player.level..'] '..Colors['white']..''..player(id,'name')..': '..message)

    return 1
end


addhook('say', 'onPlayerSay')