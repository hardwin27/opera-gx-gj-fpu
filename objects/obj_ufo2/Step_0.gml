//debug_count_step += 1;
//show_debug_message(string("Step " + string(debug_count_step)));


if (y > room_height + 24) // if UFO reaches this height (beyond bottom of screen, Game Over)
{
	if(explosion_spawned == false)
	{
		explosion_spawned = true;
		instance_create_depth(x, y - 24, 10, obj_explosion);
	}
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


	
if (y < room_height * (1/10)) // If UFO is at top 1/10 of screen
{
	vspeed = 0; // Cap vspeed
}
else if (y > room_height * (9/10))  // If UFO is at bottom 1/10 of screen
{
	downspeed = 0;  // dont scroll background, no score
}

with(obj_rubbish_handler) { // set object parent
y += downspeed * 1.5;  // every child of parent pushed down at this offset
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

layer_y("Background_1", back_y + (downspeed * 2));  // push background down

//Scoring
if (global.ufo_state2 == 1) // only calc score if UFO is active
{
	global.score2 += downspeed / 50;
	if (global.high_score < global.score2)
	{
		global.high_score = global.score2
	}
}

// If Stunned
if (global.ufo_state2 = 2) 
{
	if (global.timer2 = 0) // if stun time has passed
	{
		global.ufo_state2 = 1
	}
	else
	{
		show_debug_message(string("Stun timer: " + string(global.timer2)));
		global.timer2 -= 1
	}
}

