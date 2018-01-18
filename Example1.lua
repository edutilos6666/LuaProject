print("Hello World")


-- single line comment
--[[
 Multiline
 comment
]]

name = "derek"
io.write("Size of string ", #name,  "\n")

name = 4
io.write("My name is", name , "\n")

bigNum = 9223372036854775807 + 1
io.write("Big Number ", type(bigNum), "\n")
io.write("big number = ", bigNum, "\n")

floatPrecision =  1.999999999999 + 0.0000000000005
io.write("float precision = ", floatPrecision, "\n")
io.write("type of floatPrecision = ", type(floatPrecision), "\n")

longString = [[
I am a very very long
string that goes on far
bla bla ]]
io.write("longString = ", longString , "\n")

str1 = "foo "
str2 = "bar"
str3 = str1 .. str2
io.write(str1 , " .. ", str2 , " = ", str3, "\n")

io.write(type(madeUpVar), "\n")

-- MATH --
io.write("5 +3 = ", 5 +3, "\n")
io.write("5 -3 = ", 5 -3, "\n")
io.write("5 * 3 = ", 5*3, "\n")
io.write("5 / 3 = ", 5/3, "\n")
io.write("5 % 3 = ", 5%3, "\n" )

randomNum = 2.345
floor = math.floor(randomNum)
ceil = math.ceil(randomNum)
max = math.max(2,3)
min = math.min(2,3)
pow = math.pow(8, 2)
sqrt = math.sqrt(64)
io.write("randomNum = ", randomNum ,"\n")
io.write("floor = ", floor , "\n")
io.write("ceil = ", ceil, "\n")
io.write("max = ", max , "\n")
io.write("min = ", min, "\n")
io.write("pow = ", pow, "\n")
io.write("sqrt = ", sqrt, "\n")

randomNum = math.random()
io.write("randomNum = ", randomNum, "\n")
randomNum = math.random(10)
io.write("randomNum = ", randomNum , "\n")
randomNum = math.random(1, 100)
io.write("randomNum = ", randomNum , "\n")
io.write("\n")
math.randomseed(os.time())
randomNum = math.random()
io.write("randomNum = ", randomNum, "\n")
randomNum = math.random(10)
io.write("randomNum = ", randomNum , "\n")
randomNum = math.random(1, 100)
io.write("randomNum = ", randomNum , "\n")
print(string.format("Pi = %.10f", math.pi))

-- conditionals
age = 13
if age < 16 then
 io.write("You can go to school", "\n")
 local localVar = 10
elseif (age >= 16) and (age < 18) then
 io.write("You can drive", "\n")
else
 io.write("You can vote", "\n")
end

if (age < 14) or (age > 67) then io.write("You shouldn't work\n") end

print(string.format("not true = %s", tostring(not true)))


canVote = age > 18 and true or false
io.write("Can i vote: ", tostring(canVote), "\n")

-- strings
quote = "I changed my password everywhere to 'incorrect.' That way when I forget it,it always reminds me, 'Your password is incorrect.'"
io.write("Quote length : ", string.len(quote), "\n")
io.write("Replace I with me : ", string.gsub(quote, "I", "me"), "\n")
io.write("Index of password : ", string.find(quote, "password"), "\n")
io.write("Quote upper : ", string.upper(quote), "\n")
io.write("Quote lower : ", string.lower(quote), "\n")


-- looping
i = 1
while (i <= 10) do
 io.write(i)
 i = i + 1

 if i == 8 then break end
end
print("\n")

repeat
 io.write("Enter your guess: ")
 guess = io.read()
until tonumber(guess) == 15

for i = 1, 10, 1 do
 io.write(i)
end
print()
for i =1 , 10, 2 do
 io.write(i)
end
print()

months = {"January", "February", "March", "April",
"May", "June", "July", "August", "September",
"October", "November", "December"}

for k,v in pairs(months) do
 io.write(k, " => ", v, "\n")
end
print()


-- tables
aTable = {}
for i = 1 , 10 do
 aTable[i] = i
end

io.write("First item : ", aTable[1], "\n")
io.write("Number of Items = ", #aTable, "\n")
table.insert(aTable, 1, 0)
print(table.concat(aTable, ", "))
table.remove(aTable, 1)
print(table.concat(aTable, ", "))
table.sort(aTable, function(a, b) return a > b end)
print(table.concat(aTable, ", "))


aMultiTable = {}
for i = 0 ,9 do
 aMultiTable[i] = {}
 for j = 0, 9 do
  aMultiTable[i][j] = tostring(i).. tostring(j)
 end
end

io.write("Table[0][0]: ", aMultiTable[0][0], "\n")

for i = 0 , 9 do
 for j = 0 , 9 do
  io.write(aMultiTable[i][j], ", ")
 end
 io.write("\n")
end
print()



person = {}
person["id"] = 1
person["name"] = "foo"
person["age"] = 10
person["wage"] = 100.0
person["active"] = true
io.write("<<person details>>", "\n")
io.write("id = ", person["id"], "\n")
io.write("name = ", person["name"], "\n")
io.write("age = ", person["age"], "\n")
io.write("wage = ", person["wage"], "\n")
io.write("active = ", tostring(person["active"]), "\n")



-- functions
function getSum (num1, num2)
 return num1 + num2
end

print(string.format("5 +2 = %d", getSum(5,2)))

function splitStr(theString)
 stringTable = {}
 local i = 1
 for str in string.gmatch(theString, "[^%s]+") do
  stringTable[i] = str
  i = i + 1
 end

 return stringTable, i
end

splitStrTable , numOfStr = splitStr("The Turtle")
for j = 1 , numOfStr do
 print(string.format("%d: %s", j , splitStrTable[j]))
end

-- variadic function
function getSumMore(...)
 local sum = 0
 for k, v in pairs{...} do
  sum = sum + v
 end
 return sum
end

io.write("Sum: ", getSumMore(1, 2, 3, 4, 5, 6), "\n")

doubleIt = function(x) return x * 2 end
print(doubleIt(4))

function outerFunc()
 local i = 0
 return function()
  i = i + 1
  return i
 end
end

getI = outerFunc()
print(getI())
print(getI())


-- coroutines are like threads , except they do not run
-- in parallel

co = coroutine.create(function()
 for i = 1 , 10 , 1 do
  print(i)
  print(coroutine.status(co))
  if i == 5 then coroutine.yield() end
 end
end)

print(coroutine.status(co))
-- run coroutine
coroutine.resume(co)
print(coroutine.status(co))

co2 = coroutine.create(function()
 for i = 101, 110 , 1 do
  print(i)
 end
end)

coroutine.resume(co2)
coroutine.resume(co)



-- file io
fh = io.open("test.dat", "w+")
fh:write("Random string of text\n")
fh:write("Some more text\n")
fh:seek("set", 0)
print(fh:read("*a"))
fh:close()

fh = io.open("test.dat", "a+")
fh:write("Even more text\n")
fh:seek("set", 0)
print(fh:read("*a"))
fh:close()

-- module
convertModule = require("convert")
print(string.format("%.3f cm", convertModule.ftToCm(12)))

sm = require("SimpleMath")
x = 10
y = 3
io.write("10 + 3 = ", sm.add(x,y), "\n")
io.write("10 - 3 = ", sm.subtract(x, y), "\n")
io.write("10 * 3 = ", sm.multiply(x, y), "\n")
io.write("10 / 3 = ", sm.divide(x, y), "\n")


-- Metatables
aTable = {}
for x =  1, 10 do
 aTable[x] = x
end

mt = {
 __add = function (table1, table2)
  sumTable = {}
  for y = 1 , #table1 do
   if(table1[y] ~= nil) and (table2[y] ~= nil) then
    sumTable[y] = table1[y] + table2[y]
   else
    sumTable[y] = 0
   end
  end
  return sumTable
 end ,

 __eq = function(table1, table2)
  return table1.value == table2.value
 end ,
 __lt = function (table1, table2)
  return table1.value < table2.value
 end ,
 __le = function (table1, table2)
  return table1.value <= table2.value
 end
 }

 setmetatable(aTable, mt)
 print(aTable == aTable)
 addTable = {}
 addTable = aTable + aTable
 for z = 1 , #addTable do
  print(addTable[z])
 end


-- OOP
Animal = {height = 0 , weight = 0 , name = "No Name", sound = "No Sound"}
function Animal:new(height, weight , name, sound)
 setmetatable({}, Animal)
 self.height = height
 self.weight = weight
 self.name = name
 self.sound = sound
 return self
end

function Animal:toString()
 animalStr = string.format("%f %f %s %s", self.height , self.weight , self.name, self.sound)
 return animalStr
end

spot = Animal:new(10, 15, "Spot", "Roof")
print(spot.weight)
print(spot:toString())


-- inheritance
Cat = Animal:new()
function Cat:new(height, weight , name, sound, favFood)
 setmetatable({}, Cat)
 self.height = height
 self.weight = weight
 self.name = name
 self.sound  = sound
 self.favFood = favFood
 return self
end

function Cat:toString()
 catStr = string.format("%f %f %s %s %s", self.height, self.weight ,
self.name, self.sound, self.favFood)
 return catStr
end

fluffy = Cat:new(10, 15, "Fluffy", "Meow", "Tuna")
print(fluffy:toString())


Person = {id  = 0 , name = "", age = 0 , wage = 0.0, active = false}
function Person:new (id, name, age, wage, active)
 setmetatable({}, Person)
 self.id = id
 self.name = name
 self.age = age
 self.wage = wage
 self.active = active
 return self
end

function Person:setId(id)
 self.id = id
end

function Person:setName(name)
 self.name = name
end

function Person:setAge(age)
 self.age = age
end

function Person:setWage(wage)
 self.wage = wage
end

function Person:setActive(active)
 self.active = active
end

function Person:getId()
 return self.id
end
function Person:getName()
 return self.name
end

function Person:getAge()
 return self.age
end
function Person:getWage()
 return self.wage
end
function Person:isActive()
 return self.active
end
function Person:toString()
 return string.format("Person(%d,%s,%d,%.2f,%s)", self.id, self.name, self.age, self.wage, self.active)
end


p1 = Person:new(1, "foo", 10, 100.0, true)
print(p1:toString())
p1:setId(2)
p1:setName("bar")
p1:setAge(20)
p1:setWage(200.0)
p1:setActive(false)
print(p1:toString())


assert(true == true , "impossible")
