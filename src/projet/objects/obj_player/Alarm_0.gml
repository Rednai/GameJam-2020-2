if (room != rm_game) exit;

if (vsp != 0 || hsp != 0) audio_play_sound(snd_foot, 0, 0);

alarm[0] = room_speed / 1.75;