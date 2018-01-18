local LoopExample = {}

function LoopExample:new()
  setmetatable({}, LoopExample)
  return self
end

function LoopExample:example1()
  i = 1
  while (i <= 10) do
   io.write(i)
   i = i + 1

   if i == 8 then break end
  end
  print("\n")
end


function LoopExample:example2()
  repeat
   io.write("Enter your guess: ")
   guess = io.read()
  until tonumber(guess) == 15
end

function LoopExample:example3()
  for i = 1, 10, 1 do
   io.write(i)
  end
  print()
  for i =1 , 10, 2 do
   io.write(i)
  end
  print()
end


function LoopExample:example4()
  months = {"January", "February", "March", "April",
  "May", "June", "July", "August", "September",
  "October", "November", "December"}

  for k,v in pairs(months) do
   io.write(k, " => ", v, "\n")
  end
  print()
end


return LoopExample
