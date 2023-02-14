local PlayerHuds = require("src/services/player/player-huds")
local GameRepository = require("src/adapters/storage/in-memory/game-repository")

function everyMinute()
    for id=1,32 do
        local _player = GameRepository:get_player_by_id(id)
        if (_player ~= nil) then
            _player:update({
                hungry = _player.hungry + 5
            })
            _player:update({
                thirst = _player.thirst + 3
            })

            if(_player.hungry >= 100) then
                msg2(id,'You have been died because you was hungry!')
            end

            if(_player.thirst >= 100) then
                msg2(id,'You have been died because you was thirsty!')
            end
            
            if(_player.thirst >= 100 or _player.hungry >= 100) then
                parse('killplayer '..id)
                _player:dead()
            end

            PlayerHuds:load(id, _player)
        end
    end
    
end

addhook('minute', 'everyMinute')