/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 729D3BA7
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 48"
if(y > room_height + 48)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 66293BEA
	/// @DnDParent : 729D3BA7
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "room_width + 100"
	var new_x = floor(random_range(100, room_width + 100 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4F70033D
	/// @DnDParent : 729D3BA7
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "-100"
	x = new_x;
	y = -100;
}