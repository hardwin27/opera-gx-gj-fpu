if(global.ufo_state == 1)
{
	vspeed = 0;
	hspeed = 0;
	global.ufo_state = 0;
}
else if(global.ufo_state == 0) // reset
{
	global.ufo_state = 1;
	global.score = 0; //reset score
	x = 683;
	y = 700;
	vspeed = -5
	
	with(obj_rubbish_handler)
	{
		y = room_height + global.object_vertical_bounds;
	}
	
	with(obj_foreground_handler)
	{
		y = room_height + global.object_vertical_bounds;
	}
	
	with(obj_back_handler)
	{
		y = room_height + global.object_vertical_bounds;
	}
}
	