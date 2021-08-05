debug_count_step += 1;

show_debug_message(string("Step " + string(debug_count_step)));

// speed cap
if (vspeed > 5 and (y < room_height * (5/10)))
{
	vspeed = 5;
}
else if (vspeed < -5)
{
	vspeed = -5;
}

var downspeed =  1 / (y/room_height) // background scroll value

if (global.ufo_state = 1)
{
		if (y < room_height * (1/10))
	{
		vspeed = 0;
	}
	else if (y > room_height * (7/10))
	{
		downspeed = 0;
	}


	with(obj_rubbish_handler) {
	y += downspeed * 1.5;
	}

	with(obj_foreground_decor) {
	y += downspeed * 0.75;
	}

	with(obj_background) {
	y += downspeed * 1.75;
	}

	back_y = layer_get_y("Background");

	layer_y("Background", back_y + (downspeed * 2));

	global.score += downspeed / 50;
	if (global.high_score < global.high_score)
	{
		global.high_score = global.score
	}
}
else if (global.ufo_state = 0)
{
	
}

