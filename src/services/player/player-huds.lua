local Colors = require("sys/lua/src/utils/colors")

local PlayerHuds = {}

function PlayerHuds:level_system(id, player_entity)
    parse("hudtxt2 "..id.." 1 \""..Colors["white"].."---------------------\" 50 180")
    parse("hudtxt2 "..id.." 2 \""..Colors["white"].."Level: "..player_entity.level.."\" 50 200")
    parse("hudtxt2 "..id.." 3 \""..Colors["white"].."Experience: "..player_entity.exp.."/"..player_entity.reach_exp.."\" 50 220")
end


function PlayerHuds:update(id, player_entity)
    PlayerHuds:level_system(id,player_entity)
end


return PlayerHuds