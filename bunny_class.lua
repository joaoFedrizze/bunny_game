--bunny 🐱lass

bunny =
{
 tile_position={0,0},
 sprite_position={1,-5}
}

function bunny_move()
	spr(1,bunny.sprite_position[1],bunny.sprite_position[2])
	spr(2,bunny.sprite_position[1]+8,bunny.sprite_position[2])
	spr(17,bunny.sprite_position[1],bunny.sprite_position[2]+8)
	spr(18,bunny.sprite_position[1]+8,bunny.sprite_position[2]+8)
	
 if (btn(0)) then
  bunny.sprite_position[1] -= 16
  bunny.tile_position[1] -= 1
	elseif (btn(1)) then
	 bunny.sprite_position[1] += 16
  bunny.tile_position[1] += 1
 elseif (btn(2)) then
	 bunny.sprite_position[2] -= 16
  bunny.tile_position[2] -= 1  
 elseif (btn(3)) then
	 bunny.sprite_position[2] += 16
  bunny.tile_position[2] += 1 
 end
end

function bunny_position(position, is_x)
 if is_x then
  return position+1
 else
  return position-5
 end
end