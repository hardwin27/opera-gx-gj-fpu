/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5F546828
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "value" "1"
if(global.ufo_state == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 23491E9F
	/// @DnDParent : 5F546828
	/// @DnDArgument : "speed" "-1"
	speed = -1;
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6C0563B7
/// @DnDInput : 2
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "var_1" "global.first_time"
global.ufo_state = 0;
global.first_time = 0;