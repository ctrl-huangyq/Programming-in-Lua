load(io.read("a"))()

--[[
function a()
  print(1)
  return a()
end

a()]]