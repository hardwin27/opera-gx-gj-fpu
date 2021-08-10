if(y > room_height + 48)
{
	var new_x = floor(random_range(100, room_width + 100 + 1));

	var new_y = floor(random_range(-1000, 0 + 1));

	x = new_x;
	y = new_y - 24;
}