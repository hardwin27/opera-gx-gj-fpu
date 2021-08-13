/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D69CDC7
/// @DnDArgument : "var" "global.ufo_state2"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state2 == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 12F614CC
	/// @DnDParent : 2D69CDC7
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 718CE521
	/// @DnDParent : 2D69CDC7
	/// @DnDArgument : "var" "global.first_time2"
	global.first_time2 = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24B39F10
	/// @DnDParent : 2D69CDC7
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 34CF37BA
		/// @DnDParent : 24B39F10
		/// @DnDArgument : "speed" "-10"
		speed = -10;
	}
}