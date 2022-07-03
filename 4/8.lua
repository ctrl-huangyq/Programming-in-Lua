function ispali(str)
  str = str:gsub(" ", ""):gsub(",", ""):gsub("%.", ""):gsub("!", "")
      :gsub(";", ""):gsub("?", ""):gsub("\"", ""):gsub("'", "")
  return str:reverse() == str
end
