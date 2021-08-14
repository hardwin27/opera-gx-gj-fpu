if(!global.game_on)
{
	global.multiplayer = !global.multiplayer;
	if(global.multiplayer)
	{
		show_debug_message("Multiplayer on");
		instance_activate_object(obj_ufo2);
		instance_activate_object(obj_gui_score2);
		instance_activate_object(obj_energy_wave_left2);
		instance_activate_object(obj_energy_wave_right2);
		if(global.first_time = 0)
		{
			obj_ufo2.visible = false;
		}
	}
	else
	{
		if(room == "Room1")
		{
			show_debug_message("Multiplayer off");
			instance_deactivate_object(obj_ufo2);
			instance_deactivate_object(obj_gui_score2);
			instance_deactivate_object(obj_energy_wave_left2);
			instance_deactivate_object(obj_energy_wave_right2);
		}
	}
}
