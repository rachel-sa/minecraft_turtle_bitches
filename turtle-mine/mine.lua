local slot_count = 15
local d = "north"
local width, height, depth
--just setting local stuff

if(#arg == 3)then
  width = tonumber(arg[1])
  height = tonumber(arg[2])
  depth = tonumber(arg[3])
else
  print('improbable size  given,, now defulting to 10x10x2')
end
--for the size of dig
