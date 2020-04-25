draw_set_halign(fa_center);
var text = "You have collected " + string(argument0);
if (argument0 > 1) {
	text += " candles\n";
} else {
	text += " candle\n";
}
draw_text(
	room_width / 4 * 3, room_height / 2,
	 text
);