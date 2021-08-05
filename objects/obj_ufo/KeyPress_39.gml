/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F6BF111
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "value" "1"
if(global.ufo_state == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0A026443
	/// @DnDParent : 3F6BF111
	/// @DnDArgument : "speed" "5"
	/// @DnDArgument : "type" "1"
	hspeed = 5;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 2D047BED
	/// @DnDParent : 3F6BF111
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "speed_relative" "1"
	/// @DnDArgument : "type" "2"
	vspeed += -5;
}