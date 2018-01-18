Runner = {}
function Runner:new()
  setmetatable({}, Runner)
  return self
end

function Runner:main()
  print("<<OperatorsExample>>")
  m = require("OperatorsExample")
  ex = m:new()
  ex:test_ArithmeticOps()
  ex:test_RelationalOps()
  ex:test_MathFunctions()
  ex:test_LogicalOps()
  print()

  m = require("DataTypesExample")
  ex = m:new()
  print("<<DataTypesExample>>")
  ex:example1()
  print()

  m = require("DecisionMakingExample")
  ex = m:new()
  print("<<DecisionMakingExample>>")
  ex:example1()
  print()
  ex:example2()
  print()
  print()

  m = require("StringExample")
  ex = m:new ()
  print("<<StringExample>>")
  ex:example1()
  print()

  m = require("LoopExample")
  ex = m:new()
  print("<<LoopExample>>")
  ex:example1()
  print()
  ex:example2()
  print()
  ex:example3()
  print()
  ex:example4()
  print()
  print()


  m = require("TableExample")
  ex = m:new()
  print("<<TableExample>>")
  ex:example1()
  print()
  ex:example2()
  print()
  print()


  m = require("FunctionExample")
  ex = m:new()
  print("<<FunctionExample>>")
  ex:example1()
  print()

  m = require("CoroutineExample")
  ex = m:new()
  print("<<CoroutineExample>>")
  ex:example1()
  print()

  m = require("FileIOExample")
  ex = m:new()
  print("<<FileIOExample>>")
  ex:example1()
  print()

  m = require("ModuleExample")
  ex = m:new()
  print("<<ModuleExample>>")
  ex:example1()
  print()

  m = require("MetaTableExample")
  ex = m:new()
  print("<<MetaTableExample>>")
  ex:example1()
  print()


  m = require("OOPExample")
  ex = m:new()
  print("<<OOPExample>>")
  ex:example1()
  print()
  ex:example2()
  print()
  print()

  m = require("AssertExample")
  ex = m:new()
  print("<<AssertExample>>")
  ex:example1()
  print()

end



runner = Runner:new()
runner:main()
