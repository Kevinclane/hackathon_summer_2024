/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 057EAE56
/// @DnDApplyTo : crop_2
with(crop_2) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72FEA7E0
	/// @DnDParent : 057EAE56
	/// @DnDArgument : "expr" ""radish""
	/// @DnDArgument : "var" "crop_type"
	crop_type = "radish";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AABFD6D
	/// @DnDParent : 057EAE56
	/// @DnDArgument : "expr" ""next_stage""
	/// @DnDArgument : "var" "action_needed"
	action_needed = "next_stage";

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 0AEE6271
	/// @DnDParent : 057EAE56
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 33CB3F83
instance_destroy();