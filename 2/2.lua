N = 8
count = 0

function isplaceok(a, n, c)
  count = count + 1
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
  for i = 1, N do
    for j = 1, N do
      io.write(a[i] == j and "X" or "-", " ")
    end
    io.write("\n")
  end
  io.write("\n")
end

function addqueen(a, n)
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

function queen1()
  count = 0
  addqueen({}, 1)
  return count
end

function isplaceok2(a, n)
  count = count + 1
  for i = n + 1, N do
    if (a[n] == a[i]) or
        (a[n] - n == a[i] - i) or
        (a[n] + n == a[i] + i) then
      return false
    end
  end
  return true
end

function checkboard(a)
  for i = 1, N - 1 do
    if not isplaceok2(a, i) then
      return false
    end
  end
  return true
end

function placeboard(a, n)
  if n > N then
    if checkboard(a) then
      printsolution(a)
    end
  else
    for i = 1, N do
      a[n] = i
      placeboard(a, n + 1)
    end
  end
end

function queen2()
  count = 0
  placeboard({}, 1)
  return count
end

function test()
  local a = queen1()
  local b = queen2()
  print("queen1: ", a)
  print("queen2: ", b)
end

test()