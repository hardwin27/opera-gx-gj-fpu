/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 701C3D8C
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(global.ufo_state == 2))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2F149C63
	/// @DnDParent : 701C3D8C
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "2"
	StateSwitch(2);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 71933320
/// @DnDArgument : "speed" "-5"
speed = -5;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0A2C5E72
/// @DnDArgument : "var" "global.first_time"
global.first_time = 0;