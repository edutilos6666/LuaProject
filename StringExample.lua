local StringExample = {}

function StringExample:new()
  setmetatable({}, StringExample)
  return self
end

function StringExample:example1()
  quote = "I changed my password everywhere to 'incorrect.' That way when I forget it,it always reminds me, 'Your password is incorrect.'"
  io.write("Quote length : ", string.len(quote), "\n")
  io.write("Replace I with me : ", string.gsub(quote, "I", "me"), "\n")
  io.write("Index of password : ", string.find(quote, "password"), "\n")
  io.write("Quote upper : ", string.upper(quote), "\n")
  io.write("Quote lower : ", string.lower(quote), "\n")
end

return StringExample
