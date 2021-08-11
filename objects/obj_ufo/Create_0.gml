debug_count_draw = 0;
debug_count_step = 0;

//UFO States:
// 0 = Inactive (Start, Game Over)
// 1 = Active
// 2 = Stunned (No input resp)
global.ufo_state = 0;
global.first_time = 1;

global.score = 0;
global.high_score = 0;

global.timer = 0;
global.object_vertical_bounds = 64;

gravity = 0

x = 683;
y = 700;

function StateSwitch(newState)
{
	if (newState != global.ufo_state)
	{
		show_debug_message("StateSwitch() called")
		switch(newState)
		{
			case 0: // Transistion to 0 (Game Over)
			vspeed = 0;
			hspeed = 0;
			global.ufo_state = newState; // set ot 0
			audio_play_sound(snd_turbulence,0,0);
			global.first_time = 0;
			break;
		
			case 1: // Transistion to 1 (Start/Reset game)
			gravity = 0.2
			global.score = 0; //reset score
			x = 683;
			y = 700;
			vspeed = -5
	
			with(obj_rubbish_handler)
			{
				y = room_height + global.object_vertical_bounds;
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
			global.ufo_state = newState;
			break;
		
			case 2: // Transistion to 2 (UFO stunned)
			global.timer += 30; // in frames
			global.ufo_state = 2;
			break
		}
	}
}

