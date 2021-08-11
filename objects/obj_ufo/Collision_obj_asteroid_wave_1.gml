/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 287B4009
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "not" "1"
if(!(global.ufo_state == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4449DBEF
	/// @DnDParent : 287B4009
	/// @DnDArgument : "function" "StateSwitch"
	/// @DnDArgument : "arg" "0"
	StateSwitch(0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3B27BCE1
	/// @DnDParent : 287B4009
	/// @DnDArgument : "var" "global.first_time"
	global.first_time = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 313422C4
	/// @DnDParent : 287B4009
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 22462B2F
		/// @DnDParent : 313422C4
		/// @DnDArgument : "speed" "-10"
		speed = -10;
	}
}