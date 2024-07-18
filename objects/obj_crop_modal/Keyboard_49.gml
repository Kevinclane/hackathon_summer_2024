/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 21EEAAB8
/// @DnDApplyTo : linked_crop
with(linked_crop) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7929BDD9
	/// @DnDParent : 21EEAAB8
	/// @DnDArgument : "expr" ""wheat""
	/// @DnDArgument : "var" "crop_type"
	crop_type = "wheat";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 381734C4
	/// @DnDParent : 21EEAAB8
	/// @DnDArgument : "expr" ""next_stage""
	/// @DnDArgument : "var" "action_needed"
	action_needed = "next_stage";

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A9DB2C2
	/// @DnDParent : 21EEAAB8
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_interactable"
	is_interactable = false;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 04C76078
	/// @DnDParent : 21EEAAB8
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 37A48CA3
instance_destroy();