function integral(f, x, y, d)
  d  = d or 0.00001
  local sum = 0
  if x > y then
    d = -d
  end
  for i = x, y, d do
    sum = sum + f(i)
  end
  return sum * d
end