local FileIOExample = {}

function FileIOExample:new()
  setmetatable({}, FileIOExample)
  return self
end

function FileIOExample:example1()
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
end

return FileIOExample
