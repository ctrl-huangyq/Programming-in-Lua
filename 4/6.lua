function remove(a, b, n)
  return (b == 1 and "" or a:sub(1, utf8.offset(a, b) - 1))..a:sub(utf8.offset(a, b + n))
end

str = "Æć∰äÐ你好，ʩ"