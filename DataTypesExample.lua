DataTypesExample = {}
function DataTypesExample:new()
  setmetatable({}, DataTypesExample)
  return self
end


function DataTypesExample:example1()
  name = "edutilos"
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
end


return DataTypesExample
