/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 1740BA00
/// @DnDArgument : "var" "jumpspeed"
/// @DnDArgument : "value" "20"
var jumpspeed = 20;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 422A108D
/// @DnDApplyTo : {obj_rubbish_handler}
/// @DnDArgument : "value" "jumpspeed * 1.5"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "instvar" "1"
with(obj_rubbish_handler) {
y += jumpspeed * 1.5;
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 64116045
/// @DnDArgument : "var" "back_y"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "layer_get_y"
/// @DnDArgument : "arg" ""Background""
var back_y = layer_get_y("Background");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6FDA32A0
/// @DnDInput : 2
/// @DnDArgument : "function" "layer_y"
/// @DnDArgument : "arg" ""Background""
/// @DnDArgument : "arg_1" "back_y + jumpspeed"
layer_y("Background", back_y + jumpspeed);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 328DA72A
/// @DnDArgument : "speed" "-5"
/// @DnDArgument : "speed_relative" "1"
speed += -5;