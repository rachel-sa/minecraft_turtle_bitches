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
  coordinates = {}

  coordinates{1} = vector.new(parameters{1}, parameters{2}, parameters{3})
  coordinates{2} = vector.new(parameters{4}, parameters{5}, parameters{6})
  coordinates{3} = vector.new(parameters{7}, parameters{8}, parameters{9})
  return (coordinates)
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

  function faceToHeading(directionFace, destinationHeading)
    for t = 1, math.abs(destinationHeading - directionFace), do 1
      turtle.turnLeft()
    end
  else if(destinationHeading < directionFace) then
    for t = 1, math.abs(directionFace - destinationHeading), do 1
      turtle.turnRight()
    end
  end
end
--personal update, im in pain due to my own stupidity

function setHeadingX(headingX, diffX)
  local destinationHeading = headingX
  if (diffX < 0)then
    destinationHeading = 1 -- -x = 1
  else if(diffX > 0)then
    destinationHeading = 3 -- +x = 3
  end
  faceToHeading(directionFace, destinationHeading)
  return destinationHeading
end

fuction setHeadingZ(headingZ, diffZ)
  local destinationHeading = headingZ
  if(diffZ < 0)then
    destinationHeading = 2 -- -z = 2
  else if(diffZ > 0)then
    destinationHeading = 4 -- +z = 4
  end
  faceToHeading(directionFace, destinationHeading)
  return destinationHeading
end
  --i think im missing something here lmao,, ill come back later
--HI ITS FURTURE ME, IM STUPID AND HAD PUT MY faceToHeading FUCTION IN A COMPLETLY
--DIFFERENT PROGRAM BY ACCIDENT LMAO IT DIDNT EVEN MAKE SENSE,, THAT WAS WHAT WAS MISSING


fuction moveTo(coordinates, heading)
  local currentX, currentY, currentZ = gps.locate()
  local diffX = coordinates.X - currentX
  local diffY = coordinates.Y - currentY
  local diffZ = coordinates.Z - currentZ
  print(string.format('distances for the starting place: diffX, diffY, diffZ, %d %d %d'))
--the way i know im gonna forget these lmao:
-- -x = 1
-- -z = 2
-- +x = 3
-- +z = 4

function digAndMoveForward(n)
  for x = 1, n, do 1
    while(turtle.detect())do
      turtle.dig()
    end
    turtle.forward()
  end
end
--we do be diggin forward

function digAndMoveUp(n)
  for x = 1, n, do 1
    while(turtle.detect())do
      turtle.digUp()
    end
    turtle.up()
  end
end
--we do be diggin up

function digAndMoveDown(n)
  for x = 1, n, do 1
    while(turtle.detect())do
      turtle.digDown()
    end
    turtle.down()
  end
end
--we do be diggin down
