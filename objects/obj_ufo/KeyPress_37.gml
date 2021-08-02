/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 26A9CD48
/// @DnDArgument : "speed" "5"
/// @DnDArgument : "type" "1"
hspeed = 5;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 356D178C
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height / 4"
if(y > room_height / 4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60301F6D
	/// @DnDParent : 356D178C
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "-5"
	if(vspeed > -5)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7BBD1FC9
		/// @DnDParent : 60301F6D
		/// @DnDArgument : "speed" "-5"
		/// @DnDArgument : "speed_relative" "1"
		/// @DnDArgument : "type" "2"
		vspeed += -5;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22BD943F
else
{

}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6E6724AB
/// @DnDArgument : "speed" "1"
/// @DnDArgument : "speed_relative" "1"
/// @DnDArgument : "type" "2"
vspeed += 1;