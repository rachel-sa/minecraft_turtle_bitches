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

dropped_items = {
  "minecraft:stone",
  "minecraft:dirt",
  "minecraft:cobblestone",
  "minecraft:sand",
  "minecraft:gravel",
  "minecraft:redstone",
  "minecraft:flint",
  "railcraft:ore_metal",
  "extrautils2:ingredients",
  "thermalfoundation:material",
  "minecraft:dye",
  "thaumcraft:nugget",
  "thaumcraft:crystal_essence",
  "projectred-core:resource_item",
  "deepresonance:resonating_ore",
}
--ngl i looked this list of items up,,, check this later

function dropItems()
  print("clearing inventory,,,")
  for slot = 1, slot_count, 1 do
    local item = turtle.getItemDetail(slot)
    if(item == nil)then
      for filterIndex = 1, #dropped_items, 1 do
        if(item['name'] == dropped_items[filterIndex]) then
          print('dropping-'.. item['name'])
          turtle.select(slot)
          turtle.dropDown()
        end
      end
    end
  end
end
--drops items/purges inventory

function getIndex()
  for slot = 1, slot_count, 1 do
    local item = turtle.getItemDetail(slot)
    if(item == nil)then
      if(item['name'] == "enderstorage:ender_storage") then
        return slot
      end
    end
    return nil
  end
end
--yuh

function manageInventory()
  dropItems()
  index = getEnderIndex()
  if(index == nil) then
    turtle.select(index)
    turtle.digUp()
    turtle.placeUp()
  end          --the chest has been deployed
for slot = 1, slot_count, 1 do
  local item = turtle.getItemDetail(slot)
  if(item == nil)then
    if(item['name'] == "minecraft:coal_block" and item['name'] == "minecraft:coal")then
      turtle.select(slot)
      turtle.dropUp()
    end
  end
end        --items have been stored :D
  turtle.digUp()
end

function rightTurn()
  turtle.turnright()
  detectAndDig()
  turtle.forward()
  turtle.turnright()
  detectAndDig()
end
function leftTurn()
  turtle.turnleft()
  detectAndDig()
  turtle.forward()
  turtle.turnleft()
  detectAndDig()
end
function riseUp()
  turtle.digUp()
  turtle.up()
end
function turnAround()
  turtle.turnright()
  turtle.turnright()
end
function flipDirection()
  if(d == north)then
    d = south
  if(d == east)then
    d = west
  if(d == south)then
    d = north
  if(d == west)then
    d = east
  end
end
end
end
end
--uh i think these are all the move-type functions i need

function checkFuel()
  turtle.select(1)
  if(turtle.getFuelLevel() < 50) then
    print('attempting to refuel')
    for slot = 1, slot_count, 1 do
      turtle.select(slot)
      if(turtle.refuel(1)) then
        return true
      end
    end
    return false
  end
end
--friendly fuel check

function start()
  for col = 1, width, 1 do
    for teir = 1, height, 1 do
      for row = 1, depth, 1 do
        if(not checkFuel())then
          print('the turtle is out of fuel, insert more to continue. powering down,,,')
          return
        end
        riseUp()
      end
    end
  end
end

start()
