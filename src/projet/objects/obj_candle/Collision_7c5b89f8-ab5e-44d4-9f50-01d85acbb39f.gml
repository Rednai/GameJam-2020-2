obj_light.diameter = 55;
obj_game.candle_count++;
audio_play_sound(snd_itempick, 0, 0);

// Candle generation
var xx = irandom_range(32, room_width - 32);
var yy = irandom_range(80, room_height - 32);
	
instance_create_layer(xx, yy, "Instances", obj_candle);

instance_destroy();