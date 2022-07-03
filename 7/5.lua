function tail(filename, n)
  local f = io.open(filename)
  if not f then
    return
  end
  f:seek("end")
  local str = ""
  for _ = 1, n do
    local t, front = lastline(f)
    str = t.."\n"..str
    if front then
      break
    end
  end
  io.write(str)
end

function lastline(f)
  f:seek("cur", -1)
  local str = ""
  local char = ""
  repeat
    str = char..str
    char = f:read(1)
    if f:seek() == 1 then
      str = char..str
      return str, true
    end
    f:seek("cur", -2)
  until char == "\n" or not char
  return str
end