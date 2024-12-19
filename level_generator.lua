--level generator

function generate_level()
	for i,o in ipairs(level_001) do

  spr(3,tiles(o[1],false),tiles(o[2],false))
		spr(4,tiles(o[1],true),tiles(o[2],false))
  spr(19,tiles(o[1],false),tiles(o[2],true))
  spr(20,tiles(o[1],true),tiles(o[2],true))
	end
end

function tiles(value,is_side)
 if is_side then
  return (value*16)+8 
 else
 	return value*16
 end 
end