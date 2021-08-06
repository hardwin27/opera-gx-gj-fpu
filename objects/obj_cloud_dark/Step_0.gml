/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2739F131
/// @DnDArgument : "var" "global.score"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "30"
if(global.score > 30)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51C50BB2
	/// @DnDParent : 2739F131
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "room_height + 48"
	if(y > room_height + 48)
	{
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 3C5CE284
		/// @DnDParent : 51C50BB2
		/// @DnDArgument : "var" "new_x"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "min" "100"
		/// @DnDArgument : "max" "room_width + 100"
		var new_x = floor(random_range(100, room_width + 100 + 1));
	
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 15C34264
		/// @DnDParent : 51C50BB2
		/// @DnDArgument : "var" "new_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "400"
		var new_y = floor(random_range(0, 400 + 1));
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 30773079
		/// @DnDParent : 51C50BB2
		/// @DnDArgument : "x" "new_x"
		/// @DnDArgument : "y" "new_y - 400"
		x = new_x;
		y = new_y - 400;
	}
}