function insert(a, b, c)
  return (b == 1 and "" or a:sub(1, utf8.offset(a, b) - 1))..c..a:sub(utf8.offset(a, b))
end

str = "Æć∰äÐ你好，ʩ"