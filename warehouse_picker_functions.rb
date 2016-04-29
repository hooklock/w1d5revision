require 'pry-byebug'

WAREHOUSE = [

{ bay: "a10", product: "rubber band"},
{ bay: "a9", product: "glow stick"},
{ bay: "a8", product: "model car"},
{ bay: "a7", product: "bookmark"},
{ bay: "a6", product: "shovel"},
{ bay: "a5", product: "rubber duck"},
{ bay: "a4", product: "hanger"},
{ bay: "a3", product: "blouse"},
{ bay: "a2", product: "stop sign"},
{ bay: "a1", product: "needle"},
{ bay: "c1", product: "rusty nail"},
{ bay: "c2", product: "drill press"},
{ bay: "c3", product: "chalk"},
{ bay: "c4", product: "word search"},
{ bay: "c5", product: "thermometer"},
{ bay: "c6", product: "face wash"},
{ bay: "c7", product: "paint brush"},
{ bay: "c8", product: "candy wrapper"},
{ bay: "c9", product: "shoe lace"},
{ bay: "c10", product: "leg warmers"},
{ bay: "b1", product: "tyre swing"},
{ bay: "b2", product: "sharpie"},
{ bay: "b3", product: "picture frame"},
{ bay: "b4", product: "photo album"},
{ bay: "b5", product: "nail filer"},
{ bay: "b6", product: "tooth paste"},
{ bay: "b7", product: "bath fizzers"},
{ bay: "b8", product: "tissue box"},
{ bay: "b9", product: "deodorant"},
{ bay: "b10", product: "cookie jar"}

]

def item_at_bay(bay) 
 item = []
 for x in WAREHOUSE
  if x[:bay] == "b5"
    item << x[:product]
  end
 end 
  return item*"" 
end

def bay_of_item()
  bay = []
  for x in WAREHOUSE
      if x[:product] == "nail filer"
        bay << x[:bay]
      end
  end
  return bay*""
end



