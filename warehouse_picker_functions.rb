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

#Seamus's Sub Method (SM1) to find the index of an item given the key
def find_index(bay)
  for b in WAREHOUSE
    if b.key?(bay.to_sym)
      return WAREHOUSE.index(b)
    end
  end
end

#Seamus's Sub Method (SM2) to find the index of an item given the value
def find_index_at_value(item)
  for hash in WAREHOUSE
    if hash.has_value?(item)
      return WAREHOUSE.index(hash)
    end
  end
end

#Task 5(Tks Seumus):
#Given a list of bays ("b5", "b10", "b6") && ("b3", "c7", "c9", "a3"), list the items and determine they are 5 and 15 bays apart respectively.
#NB - solution calls SM1, returns results for one set of values only (Tks Chris & Bethany)

def distance_between_bays(bays)
  items = []
  indexes = []
  for bay in bays
    items << item_at_bay(bay.to_sym)
    indexes << find_index(bay)
  end
  min_max = indexes.minmax
  return items, min_max[1] - min_max[0]
end

#Task 6(Tks Seumus)
#Given a list of products ("shoe lace", "rusty nail", "leg warmers") && ("hanger", "deodorant", "candy wrapper", rubber band"), find the bays that need to be visited in order from Entrance to Exit i.e. ("c1", "c9", "c10") && ("a10", "a4", "c8", "b9")
#NB - solution calls SM2.

def collection_order(items)

 item_indexes = []
 collection_order = []

 for item in items
     item_indexes << find_index_at_value(item)
 end

 sorted_indexes = item_indexes.sort

 for index in sorted_indexes
   collection_order = collection_order << WAREHOUSE[index].keys[0].to_s
 end

return collection_order

end




