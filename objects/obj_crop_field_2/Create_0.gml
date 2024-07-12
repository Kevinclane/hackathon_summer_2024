/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 783D459F
/// @DnDArgument : "funcName" "reset_instance"
/// @DnDArgument : "constructor" "1"
function reset_instance() constructor
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 189DA4FA
	/// @DnDParent : 783D459F
	/// @DnDArgument : "spriteind" "CropsBlank"
	/// @DnDSaveInfo : "spriteind" "CropsBlank"
	sprite_index = CropsBlank;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2CD45F95
	/// @DnDParent : 783D459F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E7EC9EF
	/// @DnDParent : 783D459F
	/// @DnDArgument : "var" "crop_type"
	crop_type = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6899F81B
	/// @DnDParent : 783D459F
	/// @DnDArgument : "var" "crop_stage"
	crop_stage = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FAB7CC1
	/// @DnDParent : 783D459F
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "action_needed"
	action_needed = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3C04E3
	/// @DnDParent : 783D459F
	/// @DnDArgument : "expr" ""crop_field_empty""
	/// @DnDArgument : "var" "modal_option"
	modal_option = "crop_field_empty";

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 41CABB6A
	/// @DnDParent : 783D459F
	/// @DnDArgument : "msg" ""Resetting instance: {0}", self"
	show_debug_message(string("Resetting instance: {0}", self));
}