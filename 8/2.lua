function loopfor()
  for _ = 1, math.huge do
    print(1)
  end
end

function loopwhile()
  while true do
    print(1)
  end
end

function looprepeat()
  repeat
    print(1)
  until false
end

function loopgoto()
  ::begin::
  print(1)
  goto begin
end