local Colors = require("sys/lua/src/utils/colors")

local Test = {}

function Test:describe(str)
    return str
end


function Test:isEqual(a,b, test)
    if (a ~= b) then
        error("[TEST FAILED] "..test.." "..a.." is not equal as "..b.."")
        return
    end
    print(''..Colors['green']..'[TEST PASSED] '..test)
end

function Test:isDifferent(a,b, test)
    if (a == b) then
        error("[TEST FAILED]"..test.." "..a.." is not different from "..b.."")
        return
    end
    print(''..Colors['green']..'[TEST PASSED] '..test)
end

return Test