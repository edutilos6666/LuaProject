local ModuleExample = {}

function ModuleExample:new()
  setmetatable({}, ModuleExample)
  return self
end

function ModuleExample:example1()
  convertModule = require("convert")
  print(string.format("%.3f cm", convertModule.ftToCm(12)))

  sm = require("SimpleMath")
  x = 10
  y = 3
  io.write("10 + 3 = ", sm.add(x,y), "\n")
  io.write("10 - 3 = ", sm.subtract(x, y), "\n")
  io.write("10 * 3 = ", sm.multiply(x, y), "\n")
  io.write("10 / 3 = ", sm.divide(x, y), "\n")
end

return ModuleExample
