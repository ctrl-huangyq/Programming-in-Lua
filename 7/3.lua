function bytebybyte(a)
  local f = io.open(a)
  if not f then return end
  local str
  repeat
    str = f:read(1)
  until not str
  f:close()
end

function linebyline(a)
  local f = io.open(a)
  if not f then return end
  local str
  repeat
    str = f:read("L")
  until not str
  f:close()
end

function chunk8k(a)
  local f = io.open(a)
  if not f then return end
  local str
  repeat
    str = f:read(2^13)
  until not str
  f:close()
end

function whole(a)
  local f = io.open(a)
  if not f then return end
  local str =  f:read("a")
  f:close()
end

function time(f, arg)
  local init = os.clock()
  f(table.unpack(arg))
  return os.clock() - init
end

function gen(filename)
  local f = io.open(filename, "w")
  if not f then return end
  for _ = 1, 100000000 do
    f:write("a")
  end
  f:close()
end

function test()
  local filename = "large.txt"
  gen(filename)
  io.write(string.format("generate %s done\n", filename))
  io.write(string.format("byte by byte: %.3f seconds\n", time(bytebybyte, {filename})))
  io.write(string.format("line by line: %.3f seconds\n", time(linebyline, {filename})))
  io.write(string.format("chunk of 8k: %.3f seconds\n", time(chunk8k, {filename})))
  io.write(string.format("whole: %.3f seconds\n", time(whole, {filename})))
  os.remove(filename)
end