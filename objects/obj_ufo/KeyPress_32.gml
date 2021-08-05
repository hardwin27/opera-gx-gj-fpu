if(global.ufo_state == 1)
{
	vspeed = 0;
	hspeed = 0;
	global.ufo_state = 0;
}
else if(global.ufo_state == 0)
{
	global.ufo_state = 1;
	global.score = 0; //reset score
}
	