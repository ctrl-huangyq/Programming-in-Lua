function sortfile(infile, outfile)
  if infile then
    io.input(infile)
  end
  if outfile then
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