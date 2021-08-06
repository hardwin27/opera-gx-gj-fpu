/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47BB2B7E
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "room_height + 48"
if(y > room_height + 48)
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 7AB5CAE2
	/// @DnDParent : 47BB2B7E
	/// @DnDArgument : "var" "new_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "100"
	/// @DnDArgument : "max" "room_width + 100"
	var new_x = floor(random_range(100, room_width + 100 + 1));

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 49EF00A5
	/// @DnDParent : 47BB2B7E
	/// @DnDArgument : "var" "new_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "-400"
	/// @DnDArgument : "max" "0"
	var new_y = floor(random_range(-400, 0 + 1));

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 6FDC957E
	/// @DnDParent : 47BB2B7E
	/// @DnDArgument : "x" "new_x"
	/// @DnDArgument : "y" "new_y - 24"
	x = new_x;
	y = new_y - 24;
}