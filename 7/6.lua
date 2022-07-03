function mkdir(dirname)
  os.execute(string.format("mkdir %s", dirname))
end

function rmdir(dirname)
  os.execute(string.format("rd /s /q %s", dirname))
end

function listentries(dirname)
  local f = io.popen(string.format("ls %s", dirname))
  if not f then
    return
  end
  local entries = {}
  for line in f:lines() do
    table.insert(entries, line)
  end
  f:close()
  return entries
end