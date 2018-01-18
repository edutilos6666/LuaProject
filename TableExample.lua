local TableExample  = {}

function TableExample:new()
 setmetatable({}, TableExample)
 return self
end

function TableExample:example1()
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
end

function TableExample:example2()
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
end


return TableExample
