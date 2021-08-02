/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7F9A78C0
/// @DnDArgument : "speed" "-5"
/// @DnDArgument : "type" "1"
hspeed = -5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10B65E88
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "-6"
if(vspeed > -6)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 1217FB3C
	/// @DnDParent : 10B65E88
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "2"
	vspeed += -5;
}