if(global.game_on)
{
	if(!global.multiplayer)
	{
		if(global.ufo_state == 0)
		{
			global.game_on = false;
		}
	}
	else
	{
		if(global.ufo_state == 0 && global.ufo_state2 == 0)
		{
			global.game_on = false;
		}
	}
}