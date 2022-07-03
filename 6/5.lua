mem = {}

function calcc(n, m)
  if n < m then
    return 0
  elseif m == 0 then
    return 1
  else
    if (mem[n] or {})[m] then
      return mem[n][m]
    end
    local a = calcc(n - 1, m - 1) + calcc(n - 1, m)
    mem[n] = mem[n] or {}
    mem[n][m] = a
    return a
  end
end