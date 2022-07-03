function calc(a, x)
  local res = 0
  for i, v in ipairs(a) do
    res = res + v * x ^ (i - 1)
  end
  return res
end