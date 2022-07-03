N = 8
STOP = false

function isplaceok(a, n, c)
  for i = 1, n - 1 do
    if (a[i] == c) or
        (a[i] - i == c - n) or
        (a[i] + i == c + n) then
      return false
    end
  end
  return true
end

function printsolution(a)
  STOP = true
  for i = 1, N do
    for j = 1, N do
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

function addqueen(a, n)
  if STOP then
    return
  end
  if n > N then
    printsolution(a)
  else
    for i = 1, N do
      if isplaceok(a, n, i) then
        a[n] = i
        addqueen(a, n + 1)
      end
    end
  end
end

addqueen({}, 1)