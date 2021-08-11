/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57BE8FC7
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0F64A688
	/// @DnDParent : 57BE8FC7
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0198498F
	/// @DnDParent : 57BE8FC7
	/// @DnDArgument : "var" "global.first_time"
	global.first_time = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F8689E7
	/// @DnDParent : 57BE8FC7
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3A93499F
		/// @DnDParent : 1F8689E7
		/// @DnDArgument : "speed" "-10"
		speed = -10;
	}
}