if (room == rm_game) {
	repeat (5) {
		var xx = irandom_range(32, room_width - 32);
		var yy = irandom_range(80, room_height - 32);

		instance_create_layer(xx, yy, "Instances", obj_ghost);
	}
	alarm[0] = room_speed;
	alarm[1] = room_speed;
}