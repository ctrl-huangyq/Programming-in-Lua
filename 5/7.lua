function insert(a, n, b)
  table.move(b, n, #b, n + #a)
  return table.move(a, 1, #a, n, b)
end