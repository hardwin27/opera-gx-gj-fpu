/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BAAF6A3
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state == 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 115B87F9
	/// @DnDParent : 2BAAF6A3
	/// @DnDArgument : "speed" "-10"
	speed = -10;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 28816292
	/// @DnDParent : 2BAAF6A3
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 049F8DC5
	/// @DnDParent : 2BAAF6A3
	/// @DnDArgument : "var" "global.first_time"
	global.first_time = 0;
}