/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 0966E5F3
/// @DnDArgument : "output_temp" "1"
/// @DnDArgument : "var" "global.active_instance"
var temp = global.active_instance;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 73A88292
/// @DnDApplyTo : temp
with(temp) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 665C5DF9
	/// @DnDParent : 73A88292
	/// @DnDArgument : "expr" ""corn""
	/// @DnDArgument : "var" "active_crop"
	active_crop = "corn";
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 33AACF3D
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.window_is_open"
global.window_is_open = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 2B53E8F8
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.game_is_paused"
global.game_is_paused = false;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 37A48CA3
instance_destroy();