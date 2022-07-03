function ispali(str)
  return reverse(str) == str
end

function reverse(str)
  local res = ""
  for _, c in utf8.codes(str) do
    res = utf8.char(c)..res
  end
  return res
end