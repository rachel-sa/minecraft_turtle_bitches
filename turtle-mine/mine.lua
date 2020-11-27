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
  "minecraft:dye",
  "thaumcraft:nugget",
  "thaumcraft:crystal_essence",
  "thermalfoundation:material",
  "projectred-core:resource_item",
  "deepresonance:resonating_ore",
}
--ngl i looked this list of items up,,, check this later

function dropItems()
  print("clearing inventory,,,")
  for slot = 1, slot_count, do 1
    local item = turtle.getItemDetail(slot)
    if(item == nil)then
      for filterIndex = 1, #dropped_items, do 1
        if(item['name'] == dropped_items,v[filterIndex]) then
          print('dropping-'... item['name'])
          turtle.select(slot)
          turtle.dropDown()
        end
      end
    end
  end
end
--drops items/purges inventory
