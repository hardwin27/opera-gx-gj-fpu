/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 609C852B
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state == 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 28A87D97
	/// @DnDParent : 609C852B
	/// @DnDArgument : "speed" "-10"
	speed = -10;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0F943CD0
	/// @DnDParent : 609C852B
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 78B5F03E
	/// @DnDParent : 609C852B
	/// @DnDArgument : "var" "global.first_time"
	global.first_time = 0;
}