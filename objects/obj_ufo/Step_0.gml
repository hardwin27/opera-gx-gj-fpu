//debug_count_step += 1;
//show_debug_message(string("Step " + string(debug_count_step)));


if (y > room_height + 24)
{
	StateSwitch(0);
}

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


	
if (y < room_height * (1/10))
{
	vspeed = 0;
}
else if (y > room_height * (9/10))
{
	downspeed = 0;
}

with(obj_rubbish_handler) {
y += downspeed * 1.5;
}

with(obj_satelite_handler){
	y += downspeed * 1.6;
}

with(obj_foreground_handler) {
y += downspeed * 0.75;
}

with(obj_back_handler) {
y += downspeed * 1.75;
}

back_y = layer_get_y("Background_1");

layer_y("Background_1", back_y + (downspeed * 2));

if (global.ufo_state == 1)
{
	global.score += downspeed / 50;
	if (global.high_score < global.score)
	{
		global.high_score = global.score
	}
}

// If Stunned
if (global.ufo_state = 2) 
{
	if (global.timer = 0) // if stun time has passed
	{
		global.ufo_state = 1
	}
	else
	{
		show_debug_message(string("Stun timer: " + string(global.timer)));
		global.timer -= 1
	}
}

