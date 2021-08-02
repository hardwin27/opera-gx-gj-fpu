/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E4ECB6F
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height * 2 / 3"
if(y < room_height * 2 / 3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7595C542
	/// @DnDParent : 7E4ECB6F
	/// @DnDArgument : "var" "vspeed"
	/// @DnDArgument : "op" "1"
	if(vspeed < 0)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31B1DDC1
		/// @DnDParent : 7595C542
		/// @DnDArgument : "var" "downspeed"
		/// @DnDArgument : "value" "-vspeed "
		var downspeed = -vspeed ;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 63901F96
		/// @DnDApplyTo : {obj_rubbish_handler}
		/// @DnDParent : 7595C542
		/// @DnDArgument : "value" "downspeed * 1.5"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_rubbish_handler) {
		y += downspeed * 1.5;
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 44BAFD07
		/// @DnDParent : 7595C542
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""Background""
		var back_y = layer_get_y("Background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 14F0458E
		/// @DnDInput : 2
		/// @DnDParent : 7595C542
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""Background""
		/// @DnDArgument : "arg_1" "back_y + downspeed"
		layer_y("Background", back_y + downspeed);
	}
}