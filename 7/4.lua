function lastline(filename)
  local f = io.open(filename)
  if not f then
    return
  end
  f:seek("end", -1)
  local str = ""
  local char = ""
  repeat
    str = char..str
    char = f:read(1)
    f:seek("cur", -2)
  until char == "\n"
  f:close()
  io.write(str, "\n")
end