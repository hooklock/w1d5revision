require 'pry-byebug'

WAREHOUSE = [

{ a10: "rubber band"},
{ a9: "glow stick"},
{ a8: "model car"},
{ a7: "bookmark"},
{ a6: "shovel"},
{ a5: "rubber duck"},
{ a4: "hanger"},
{ a3: "blouse"},
{ a2: "stop sign"},
{ a1: "needle"},
{ c1: "rusty nail"},
{ c2: "drill press"},
{ c3: "chalk"},
{ c4: "word search"},
{ c5: "thermometer"},
{ c6: "face wash"},
{ c7: "paint brush"},
{ c8: "candy wrapper"},
{ c9: "shoe lace"},
{ c10: "leg warmers"},
{ b1: "tyre swing"},
{ b2: "sharpie"},
{ b3: "picture frame"},
{ b4: "photo album"},
{ b5: "nail filer"},
{ b6: "tooth paste"},
{ b7: "bath fizzers"},
{ b8: "tissue box"},
{ b9: "deodorant"},
{ b10: "cookie jar"}

]

#Task 1:
# Given a bay ("b5"), return the item in that bay ("nail filer")

def item_at_bay(bay) 
 for item in WAREHOUSE
  if item.key?(bay.to_sym)
  return item[bay.to_sym]
  end
 end
end

#Task 2:
# Given an item ("nail filer"), return the bay that it is in ("b5")

def bay_of_item(item)
  for bay in WAREHOUSE
    if bay.has_value?(item)
    return bay.key(item).to_s
    end
  end
end

#Task 3:
# Given a list of bays ("b5, b10 and b6"), return the items in those bays ("nail filer, cookie jar, tooth paste")

def items_at_bays(bays)
  items = []
  for bay in bays
    items << item_at_bay(bay.to_sym)  
  end
  return items
end

#Task 4:
#Given a list of items ("shoe lace", "rusty nail", "leg warmers"), find the bays ("c1", "c9", "c10")

def bays_of_items(items)
  bays = []
  for item in items
    bays << bay_of_item(item)
  end
  return bays
end



