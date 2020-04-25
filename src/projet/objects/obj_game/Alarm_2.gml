if (room != rm_game && room != rm_end) {
	exit;
}

candle_frame = (candle_frame + 1) % sprite_get_number(spr_candle_gui);

alarm[2] = sprite_get_speed(spr_candle_gui);