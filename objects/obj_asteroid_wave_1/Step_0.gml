if(global.score > 50)
{
	if(y > room_height + 48) or (x < -12) or (x > room_width + 12)
	{
		var new_x = floor(random_range(100, room_width + 100 + 1));
		var new_y = floor(random_range(-1000, 0 + 1));
		image_angle = random_range(0,360);
		x = new_x;
		y = new_y - global.object_vertical_bounds;
		hspeed = random_range(-3,3)
		vspeed = random_range(-2,2)
	}
}