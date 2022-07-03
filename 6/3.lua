function exceptlast_(a, n)
  if n < a.n then
    return a[n], exceptlast_(a, n + 1)
  end
end

function exceptlast(...)
  return exceptlast_(table.pack(...), 1)
end