local OOPExample = {}

function OOPExample:new()
  setmetatable({}, OOPExample)
  return self
end

function OOPExample:example1()
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
end


function OOPExample:example2()
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

end

return OOPExample
