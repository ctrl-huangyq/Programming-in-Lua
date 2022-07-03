function remove(a, b, n)
  return a:sub(1, b - 1)..a:sub(b + n)
end