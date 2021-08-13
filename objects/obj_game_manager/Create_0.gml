//Globals
global.ufo_state = 0;
global.first_time = 1;

global.score = 0;

global.timer = 0;

global.ufo_state2 = 0;
global.first_time2 = 1;

global.score2 = 0;

global.timer2 = 0;

global.object_vertical_bounds = 64; //despawn bound offset for object
global.high_score = 0;

global.game_on = false;
global.multiplayer = false;

instance_deactivate_object(obj_ufo2);
instance_deactivate_object(obj_gui_score2);
instance_deactivate_object(obj_energy_wave_left2);
instance_deactivate_object(obj_energy_wave_right2);