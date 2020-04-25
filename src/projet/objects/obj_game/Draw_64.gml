if (room == rm_game) {
	draw_sprite(spr_candle_gui, candle_frame, 10, 10);
	draw_text(45, 30, obj_game.candle_count);
	
	draw_sprite(spr_ghost_gui, ghost_frame, 75, 10);
	draw_text(130, 30, obj_game.ghost_count);
} else if (room == rm_end) {
	draw_sprite(spr_candle_gui, candle_frame, 721, 268);
	draw_text(770, 295, obj_game.candle_count);
	
	draw_sprite(spr_ghost_gui, ghost_frame, 800, 270);
	draw_text(865, 295, obj_game.ghost_count);	
}