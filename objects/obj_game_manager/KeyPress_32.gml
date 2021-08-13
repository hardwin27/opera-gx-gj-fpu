if(!global.game_on)
{
	if(!global.multiplayer)
	{
		if(global.ufo_state == 0)
		{
			obj_ufo.StateSwitch(1);
			obj_ufo.explosion_spawned = false;
		}
	}
	else
	{
		if(global.ufo_state == 0)
		{
			obj_ufo.StateSwitch(1);
		}
		if(global.ufo_state2 == 0)
		{
			obj_ufo2.StateSwitch(1);
		}
		obj_ufo2.visible = true;
		obj_ufo.explosion_spawned = false;
		obj_ufo2.explosion_spawned = false;
	}	
	global.game_on = true;
}