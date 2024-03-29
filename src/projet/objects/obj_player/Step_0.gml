var bbox_side;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

hsp = (key_right - key_left) * speedh;
vsp = (key_down - key_up) * speedv;

// Horizontal collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
	if (hsp > 0) x = x - (x % 16) + 15 - (bbox_right - x);
	else x = x - (x % 16) - (bbox_left - x);
	hsp = 0;
}
x += hsp;

// Vertical collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0) {
	if (vsp > 0) y = y - (y % 16) + 15 - (bbox_bottom - y);
	else y = y - (y % 16) - (bbox_top - y);
	vsp = 0;
}
y += vsp;

if (vsp > 0) sprite_index = spr_player_down;
else if (vsp < 0) sprite_index = spr_player_up;
else if (hsp > 0) sprite_index = spr_player_right;
else if (hsp < 0) sprite_index = spr_player_left;
else sprite_index = spr_player_idle;