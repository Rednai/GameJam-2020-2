if (room != rm_game) {
	exit;	
}

obj_light.diameter -= 1;
if (obj_light.diameter <= 5) {
	audio_stop_sound(snd_game_music);
	audio_play_sound(snd_death_oof, 0, 0);
	room = rm_end;
	exit;
}
alarm[1] = room_speed;