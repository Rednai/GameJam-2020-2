alpha_room = 0.8;
factor = 0.4;
diameter = 55;
diameter_ghost = 25;
diameter_candle = 15;

surf = surface_create(room_width, room_height);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

//Reset
surface_reset_target();