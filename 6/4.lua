function shuffle(a)
  local res = {}
  local flags = {}
  for i = 1, #a do
    table.insert(flags, i)
  end
  while #flags > 0 do
    local t = math.random(#flags)
    table.insert(res, a[flags[t]])
    table.remove(flags, t)
  end
  return res
end