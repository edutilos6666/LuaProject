local OperatorsExample = {}
function OperatorsExample:new()
  setmetatable({}, OperatorsExample)
  return self
end

function OperatorsExample:test_ArithmeticOps()
  local x = 10
  local y = 3
  local add = x + y
  local sub = x - y
  local mul = x * y
  local div = x / y
  local mod = x % y
  local pow = x ^ y
  print("<<Arithmetic Operators>>")
  io.write("x = ", x , " and y = ", y , "\n")
  io.write("x + y = ", add , "\n")
  io.write("x - y = ", sub, "\n")
  io.write("x * y = ", mul, "\n")
  io.write("x / y = ", div, "\n")
  io.write("x % y = ", mod, "\n")
  io.write("x ^ y = ", pow , "\n")
end


function OperatorsExample:test_RelationalOps()
  local x = 10
  local y = 3
  local eq = x == y
  local ne = x ~= y
  local gt = x > y
  local gte = x >= y
  local lt = x < y
  local lte = x <= y
  print("<<Relational Operators>>")
  io.write("x = ", x , " and y = ", y , "\n")
  io.write("x == y = ", tostring(eq) , "\n")
  io.write("x ~= y = ", tostring(ne) , "\n")
  io.write("x > y = ", tostring(gt) , "\n")
  io.write("x >= y = ", tostring(gte) , "\n")
  io.write("x < y = ", tostring(lt) , "\n")
  io.write("x <= y = ", tostring(lte) , "\n")
end

function OperatorsExample:test_MathFunctions()
  local floor = math.floor(2.345)
  local ceil = math.ceil(2.345)
  local max = math.max(2, 3)
  local min = math.min(2, 3)
  local exp = math.exp(10)
  local log = math.log(10)
  local log10 = math.log10(1000)
  local pow = math.pow(10, 3)
  local sin = math.sin(math.asin(1))
  local cos = math.cos(math.acos(1))
  local tan = math.tan(math.atan(1))
  math.randomseed(os.time())
  local r1 = math.random()
  local r2 = math.random(10)
  local r3 = math.random(1, 100)
  local pi = math.pi
  print("<<Math Functions>>")
  io.write("floor = ", floor , "\n")
  io.write("ceil = ", ceil, "\n")
  io.write("max = ", max , "\n")
  io.write("min = ", min , "\n")
  io.write("exp = ", exp , "\n")
  io.write("log = ", log , "\n")
  io.write("log10 = ", log10, "\n")
  io.write("pow = ", pow, "\n")
  io.write("sin = ", sin , "\n")
  io.write("cos = ", cos , "\n")
  io.write("tan = ", tan , "\n")
  io.write("r1 = ", r1, "\n")
  io.write("r2 = ", r2, "\n")
  io.write("r3 = ", r3, "\n")
  io.write("pi = ", pi, "\n")
end

function OperatorsExample:test_LogicalOps()
  local x = true
  local y = false
  local andRes = x and y
  local orRes = x or y
  local not_x = not(x)
  local not_y = not(y)
  print("<<Logical Operators>>")
  io.write("x = ", tostring(x) , " and y = ", tostring(y), "\n")
  io.write("x and y = ", tostring(andRes), "\n")
  io.write("x or y = ", tostring(orRes), "\n")
  io.write("not(x) = ", tostring(not_x), "\n")
  io.write("not(y) = ", tostring(not_y) , "\n")
end


return OperatorsExample
