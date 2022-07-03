function sortfile(infile, outfile)
  if infile then
    io.input(infile)
  end
  if outfile then
    if io.open(outfile, "r") then
      io.write(string.format("Are you sure to overwrite the exist file %s? [y/n]\n", outfile))
      local str = io.read(1)
      if str ~= "y" then
        return
      end
    end
    io.output(outfile)
  end
  local lines = {}
  for line in io.lines() do
    table.insert(lines, line)
  end
  table.sort(lines)
  for _, v in ipairs(lines) do
    io.write(v, "\n")
  end
end