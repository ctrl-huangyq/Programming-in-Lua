function concat(a)
  local res = ""
  for i = 1, #a do
    res = res..a[i]
  end
  return res
end

function generate()
  local a = {}
  for _ = 1, 200000 do
    table.insert(a, "aaa")
  end
  return a
end

function test()
  local a = generate()
  local init = os.clock()
  local c = table.concat(a)
  io.write(string.format("builtin concat use %.3f seconds\n", os.clock() - init))
  init = os.clock()
  local b = concat(a)
  io.write(string.format("user concat use %.3f seconds\n", os.clock() - init))
  io.write(string.format("b == c: %s", b == c and "true\n" or "false"))
end