function calc(a, x)
  local res = 0
  local acc = 1
  for _, v in ipairs(a) do
    res = res + v * acc
    acc = acc * x
  end
  return res
end