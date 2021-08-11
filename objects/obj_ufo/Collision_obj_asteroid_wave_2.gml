/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E52B6CF
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6F89618F
	/// @DnDParent : 5E52B6CF
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7DB1ED09
	/// @DnDParent : 5E52B6CF
	/// @DnDArgument : "var" "global.first_time"
	global.first_time = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B8E7A28
	/// @DnDParent : 5E52B6CF
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 6C7395F1
		/// @DnDParent : 7B8E7A28
		/// @DnDArgument : "speed" "-10"
		speed = -10;
	}
}