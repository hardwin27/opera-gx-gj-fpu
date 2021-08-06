/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C5E7A83
/// @DnDArgument : "var" "global.score"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "75"
if(global.score > 75)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44FE0C1F
	/// @DnDParent : 1C5E7A83
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_height + 48"
	if(y > room_height + 48)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 04E9D8A4
		/// @DnDParent : 44FE0C1F
		/// @DnDArgument : "var" "new_x"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "100"
		/// @DnDArgument : "max" "room_width + 100"
		var new_x = floor(random_range(100, room_width + 100 + 1));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 191D5E1C
		/// @DnDParent : 44FE0C1F
		/// @DnDArgument : "var" "new_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "400"
		var new_y = floor(random_range(0, 400 + 1));
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 39126CB6
		/// @DnDParent : 44FE0C1F
		/// @DnDArgument : "x" "new_x"
		/// @DnDArgument : "y" "new_y - 400"
		x = new_x;
		y = new_y - 400;
	}
}