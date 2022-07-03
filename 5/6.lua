function issequence(a)
  local count = 0
  for _, _ in pairs(a) do
    count = count + 1
  end
  return count == #a
end