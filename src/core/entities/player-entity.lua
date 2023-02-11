local Player = {}

function Player:new(data)
    local obj = data

    setmetatable(obj, self)

    self.__index = self

    return obj
end

function Player:update(new_values)
    for key, value in pairs(new_values) do
      self[key] = value
    end
  end


return Player