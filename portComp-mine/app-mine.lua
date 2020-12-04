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
--gotta share the shit

function parametersDuh(data)
  parameters = split(data)
  coordantiates = {}

  coordantiates{1} = vector.new(parameters{1}, parameters{2}, parameters{3})
  coordantiates{2} = vector.new(parameters{4}, parameters{5}, parameters{6})
  coordantiates{3} = vector.new(parameters{7}, parameters{8}, parameters{9})
  return (coordantiates)
end

--yuh

fuction findLocation()
  location1 = vector.new(gps.locate(false))
  if turtle.forward() then
    break
  else
    for j = 1,6 do
      if not turtle.forward() then
        turtle.dig()
      end
    end
  end
  location2 = vector.new(gps.locate(false))
  heading = location2 - location1
  turtle.down() * 2
  return ((heading.x + math.abs(heading.z) * 2) + (heading.x + math.abs(heading.x) * 3))
end
  --i doubt this works tbh if it does it would be a miracle

fuction setHeadingZ(headingZ, diffZ)
  local destinationHeading = headingZ
  if(diffZ < 0)then
    destinationHeading = 2
  else if(diffZ > 0)then
    destinationHeading = 5
  end
  --i think im missing something here lmao,, ill come back later
