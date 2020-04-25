var bbox_side;

// Horizontal collision
if (hsp > 0) bbox_side = bbox_right; else bbox_side = bbox_left;
if (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + hsp, bbox_bottom) != 0) {
	if (hsp > 0) x = x - (x % 16) + 15 - (bbox_right - x);
	else x = x - (x % 16) - (bbox_left - x);
	hsp = hsp * -1;
}
x += hsp;

// Vertical collision
if (vsp > 0) bbox_side = bbox_bottom; else bbox_side = bbox_top;
if (tilemap_get_at_pixel(tilemap, bbox_left, bbox_side + vsp) != 0) || (tilemap_get_at_pixel(tilemap, bbox_right, bbox_side + vsp) != 0) {
	if (vsp > 0) y = y - (y % 16) + 15 - (bbox_bottom - y);
	else y = y - (y % 16) - (bbox_top - y);
	vsp = vsp * -1;
}
y += vsp;

if (hsp > 0) sprite_index = spr_ghost_right;
else sprite_index = spr_ghost_left;