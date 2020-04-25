if (room == rm_game) {
	candle_count = 0;
	ghost_count = 0;
	
	candle_frame = 0;
	ghost_frame = 0;
	alarm[2] = sprite_get_speed(candle_frame);
	alarm[3] = sprite_get_speed(ghost_frame);
	
	// Ghost generation
	repeat (5) {
		ghost_count++;
		var xx = irandom_range(32, room_width - 32);
		var yy = irandom_range(80, room_height - 32);

		instance_create_layer(xx, yy, "Instances", obj_ghost);
	}
	
	// Candle generation
	var xx = irandom_range(32, room_width - 32);
	var yy = irandom_range(80, room_height - 32);
	
	instance_create_layer(xx, yy, "Instances", obj_candle);

	alarm[0] = room_speed;
	alarm[1] = room_speed;
}