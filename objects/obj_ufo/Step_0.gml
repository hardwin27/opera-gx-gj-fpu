/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E4ECB6F
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "room_height / 2"
if(y < room_height / 2)
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
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 08B4103F
		/// @DnDApplyTo : {obj_foreground_decor}
		/// @DnDParent : 7595C542
		/// @DnDArgument : "value" "downspeed * 0.75"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_foreground_decor) {
		y += downspeed * 0.75;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 10783C3B
		/// @DnDApplyTo : {obj_background}
		/// @DnDParent : 7595C542
		/// @DnDArgument : "value" "downspeed * 1.75"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "instvar" "1"
		with(obj_background) {
		y += downspeed * 1.75;
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 44BAFD07
		/// @DnDParent : 7595C542
		/// @DnDArgument : "var" "back_y"
		/// @DnDArgument : "function" "layer_get_y"
		/// @DnDArgument : "arg" ""Background""
		back_y = layer_get_y("Background");
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 14F0458E
		/// @DnDInput : 2
		/// @DnDParent : 7595C542
		/// @DnDArgument : "function" "layer_y"
		/// @DnDArgument : "arg" ""Background""
		/// @DnDArgument : "arg_1" "back_y + (downspeed * 2)"
		layer_y("Background", back_y + (downspeed * 2));
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7467517A
		/// @DnDParent : 7595C542
		/// @DnDArgument : "value" "downspeed / 50"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "score"
		global.score += downspeed / 50;
	}
}