local FunctionExample = {}

function FunctionExample:new()
  setmetatable({}, FunctionExample)
  return self
end

function FunctionExample:example1()
  print(string.format("5 +2 = %d", getSum(5,2)))
  splitStrTable , numOfStr = splitStr("The Turtle")
  for j = 1 , numOfStr do
   print(string.format("%d: %s", j , splitStrTable[j]))
  end
  io.write("Sum: ", getSumMore(1, 2, 3, 4, 5, 6), "\n")

  doubleIt = function(x) return x * 2 end
  print(doubleIt(4))
  getI = outerFunc()
  print(getI())
  print(getI())
end

function getSum (num1, num2)
 return num1 + num2
end

function splitStr(theString)
 stringTable = {}
 local i = 1
 for str in string.gmatch(theString, "[^%s]+") do
  stringTable[i] = str
  i = i + 1
 end

 return stringTable, i
end

-- variadic function
function getSumMore(...)
 local sum = 0
 for k, v in pairs{...} do
  sum = sum + v
 end
 return sum
end


function outerFunc()
 local i = 0
 return function()
  i = i + 1
  return i
 end
end


return FunctionExample
