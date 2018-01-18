local AssertExample = {}

function AssertExample:new()
  setmetatable({}, AssertExample)
  return self
end

function AssertExample:example1()
  local sm = require("SimpleMath")
  local x = 10
  local y = 3
  local errMsg = "something went wrong"
  assert(13 == sm.add(x, y) ,errMsg)
  assert(7 == sm.subtract(x, y), errMsg)
  assert(30 == sm.multiply(x, y), errMsg)
end

return AssertExample
