function gauss(n)
  local sum = 0
  for i = 1, 6 do
    sum = sum + math.random(0, n)
  end
  return sum / 6
end