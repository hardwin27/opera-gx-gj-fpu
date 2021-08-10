show_debug_message(string("Left Pressed"));

if(global.ufo_state == 1)
{
	audio_stop_all(); //quick fix
	hspeed = -5;
	vspeed = -5;
	audio_play_sound(snd_mag_left,0,0);
}
else if(global.ufo_state == 0)
{
	StateSwitch(1);
}
