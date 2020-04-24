if (surface_exists(surf)) {
	surface_set_target(surf);

	draw_set_color(c_black);
	draw_set_alpha(alpha_room);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	//set circle
	gpu_set_blendmode(bm_subtract);
	draw_set_colour(c_black);
	draw_set_alpha(0.2);

	with (obj_player) {
		draw_circle(x + random_range(-1,1), y + random_range(-1,1), (obj_light.diameter + obj_light.factor * obj_light.diameter) + random_range(-1,1), false);
	}
	with (obj_ghost) {
		draw_circle(x + random_range(-1,1), y + random_range(-1,1), (obj_light.diameter_ghost + obj_light.factor * obj_light.diameter_ghost) + random_range(-1,1), false);
	}

	draw_set_colour(c_white);
	draw_set_alpha(1);
	with (obj_player) {
		draw_circle(x + random_range(-1,1), y + random_range(-1,1), obj_light.diameter + random_range(-1,1), false);
	}
	with (obj_ghost) {
		draw_circle(x + random_range(-1,1), y + random_range(-1,1), obj_light.diameter_ghost + random_range(-1,1), false);
	}

	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
} else {
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	surface_reset_target();
}