function insert(a, b, c)
  return a:sub(1, b - 1)..c..a:sub(b)
end