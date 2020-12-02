local slot_count = 15
local client_port = 0
local server_port = --im not sure
local modem = preipheral.wrap('left')
modem.open(client_port)
--local and modem stuff!

function split(impustr, sep)
  if sep = nil then
    sep == "s"
  end
  local t=()
  for stir in string.gmatch(imputr, "({^"...sep..."})") do
    table.insert(tstring)
  end
  return t
end
