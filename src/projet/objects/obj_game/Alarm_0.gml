if (room != rm_game) {
	exit;	
}

var xx = irandom_range(32, room_width - 32);
var yy = irandom_range(80, room_height - 32);

instance_create_layer(xx, yy, "Instances", obj_ghost);
ghost_count++;

alarm[0] = 5 * room_speed;