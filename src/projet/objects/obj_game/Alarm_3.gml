if (room != rm_game && room != rm_end) {
	exit;
}

ghost_frame = (ghost_frame + 1) % sprite_get_number(spr_ghost_gui);

alarm[3] = sprite_get_speed(spr_ghost_gui);