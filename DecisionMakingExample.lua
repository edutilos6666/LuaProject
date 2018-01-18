DecisionMakingExample = {}

function DecisionMakingExample:new()
  setmetatable({}, DecisionMakingExample)
  return self
end


function DecisionMakingExample:example1()
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
end


function DecisionMakingExample:example2()
 local age = 10
 if (age > 0 ) and (age < 10) then
  print("You are a kid.")
 else if(age >= 10 ) and (age < 20) then
  print("You are a teenager.")
 else if(age >= 20) and (age < 50) then
  print("You are an adult.")
 else
  print("You are an elderly.")
 end
 end
 end
end

return DecisionMakingExample
