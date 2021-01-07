local server_port = 420
local app_port = 70
local size = vector.new()
modem = peripheral.warp('back')
--local and modem shit🥴

if (arguement = 3)then
  size.x = tonumber(arguement[1])
  size.y = tonumber(arguement[2])
  size.z = tonumber(agruement[3])
else
  print('i need a fucking size')
  os.exit()
end
--size is important kids

local spot = vector.new(gps.locate())
local amountText = string.format("%d %d %d %d %d", spot.x, spot.y - 1, spot.z,
  size.x, size.y, size.z, 1)
  --i hate lua

  print(string.format("spotting %d %d %d", pot.x, spot.y - 1, spot.z))
  modem.transmit(server_port, app_port, amountText)
--ok this is fine ig 
