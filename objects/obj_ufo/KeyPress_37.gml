/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AC7D4DE
/// @DnDArgument : "var" "global.ufo_state"
/// @DnDArgument : "value" "1"
if(global.ufo_state == 1)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 7E6890F5
	/// @DnDParent : 6AC7D4DE
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "type" "1"
	hspeed = -5;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 07F418F5
	/// @DnDParent : 6AC7D4DE
	/// @DnDArgument : "speed" "-5"
	/// @DnDArgument : "type" "2"
	vspeed = -5;
}