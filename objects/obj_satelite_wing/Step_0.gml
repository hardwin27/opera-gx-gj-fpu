	if(y > room_height + 48)
	{
		var new_x = floor(random_range(100, room_width + 100 + 1));
		var new_y = floor(random_range(-1000, 0 + 1));
		image_angle = random_range(0,360);
		x = new_x;
		y = new_y - global.object_vertical_bounds;
		hspeed = random_range(-2,2);
	}
	