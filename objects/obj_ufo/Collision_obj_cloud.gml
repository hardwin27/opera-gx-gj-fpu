/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4054EF8D
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "2"
if(!(global.ufo_state == 2))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4B66BCCC
	/// @DnDParent : 4054EF8D
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "2"
	StateSwitch(2);
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5127892A
/// @DnDArgument : "speed" "-5"
speed = -5;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1D7E4E0E
/// @DnDArgument : "var" "global.first_time"
global.first_time = 0;