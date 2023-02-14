local Colors = require("sys/lua/src/utils/colors")

local PlayerHuds = {}

function PlayerHuds:level_system(id, player_entity)
    parse("hudtxt2 "..id.." 2 \""..Colors["white"].."Level: "..Colors["blue"]..""..player_entity.level.."\" 50 200")
    parse("hudtxt2 "..id.." 3 \""..Colors["white"].."Experience: "..Colors["blue"]..""..player_entity.exp.."/"..Colors["orange"]..""..player_entity.reach_exp.."\" 50 220")
end

function PlayerHuds:bars(id, player_entity)
    parse("hudtxt2 "..id.." 4 \""..Colors["white"]..""..Colors["orange"].."Hungry: "..player_entity.hungry.."%\" 50 280")
    parse("hudtxt2 "..id.." 5 \""..Colors["white"]..""..Colors["blue"].."Thirst: "..player_entity.thirst.."%\" 50 300")
end


function PlayerHuds:load(id, player_entity)
    PlayerHuds:level_system(id,player_entity)
    PlayerHuds:bars(id, player_entity)
end


return PlayerHuds