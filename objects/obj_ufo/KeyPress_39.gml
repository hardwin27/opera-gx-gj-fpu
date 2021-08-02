/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7F9A78C0
/// @DnDArgument : "speed" "-5"
/// @DnDArgument : "type" "1"
hspeed = -5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 665AC73E
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height / 4"
if(y > room_height / 4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10B65E88
	/// @DnDParent : 665AC73E
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "-5"
	if(vspeed > -5)
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
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2E05DC6D
else
{

}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 573AA1D1
/// @DnDArgument : "speed" "1"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += 1;