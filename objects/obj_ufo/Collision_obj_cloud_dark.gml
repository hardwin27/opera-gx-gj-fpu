/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4CCC25E6
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "value" "1"
if(global.ufo_state == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 47754CA2
	/// @DnDParent : 4CCC25E6
	speed = 0;
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4233D130
/// @DnDInput : 2
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "var_1" "global.first_time"
global.ufo_state = 0;
global.first_time = 0;