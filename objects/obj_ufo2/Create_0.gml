debug_count_draw = 0;
debug_count_step = 0;

explosion_spawned = 0;

gravity = 0

//Init position (1 player)
x = 672;
y = 700;

function StateSwitch(newState)
// State Switcher, Argument is target state
//UFO States:
// 0 = Inactive (Start, Game Over)
// 1 = Active
// 2 = Stunned (No input resp)
{
	if (newState != global.ufo_state2)
	{
		show_debug_message("StateSwitch() called")
		switch(newState)
		{
			case 0: // Transistion to 0 (Game Over)
			vspeed = 0;
			hspeed = 0;
			global.ufo_state2 = newState; // set ufoState to current (0)
			audio_stop_all() // stop previous jump sfx
			audio_play_sound(snd_turbulence,0,0);
			global.first_time2 = 0;
			break;
		
			case 1: // Transistion to 1 (Start/Reset game)
			gravity = 0.2
			global.score2 = 0; //reset score
			
			// Reset UFO Position (1 Player)
			x = 672; 
			y = 700;
			vspeed = -5  // Initial jump after input
	
			with(obj_rubbish_handler) // set children of this object
			{
				y = room_height + global.object_vertical_bounds; // to bottom of screen
			}
			
			with(obj_satelite_handler)
			{
				y = room_height + global.object_vertical_bounds;
			}
	
			with(obj_foreground_handler)
			{
				y = room_height + global.object_vertical_bounds;
			}
	
			with(obj_back_handler)
			{
				y = room_height + global.object_vertical_bounds;
			}
			global.ufo_state2 = newState; // set ufoState to current (1)
			break;
		
			case 2: // Transistion to 2 (UFO stunned)
			global.timer2 += 30; // in frames (check game speed)
			global.ufo_state2 = 2;
			break
		}
	}
}

