-- Tests

dofile("sys/lua/tests/player/player-entity-tests.lua")
dofile("sys/lua/tests/player/player-repository-tests.lua")
dofile("sys/lua/tests/game/game-repository-tests.lua")

-- Handlers

dofile("sys/lua/src/handlers/player/leave-server.lua")
dofile("sys/lua/src/handlers/player/join-server.lua")
dofile("sys/lua/src/handlers/player/say.lua")
dofile("sys/lua/src/handlers/player/kill.lua")
