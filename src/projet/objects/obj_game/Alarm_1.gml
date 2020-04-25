if (room != rm_game) {
	exit;	
}

obj_light.diameter -= 1.5;
if (obj_light.diameter <= 5) exit;
alarm[1] = room_speed;