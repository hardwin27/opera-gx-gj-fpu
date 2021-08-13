show_debug_message(string("Right Pressed"));

if(global.ufo_state == 1)
{
	audio_stop_all(); //quick fix
	hspeed = 5;
	vspeed += -5;
	audio_play_sound(snd_mag_left,0,0);
	obj_energy_wave_left.visible = true;
	obj_energy_wave_left.image_speed = 1;
}
/*else if(global.ufo_state == 0)
{
	StateSwitch(1);
}*/
