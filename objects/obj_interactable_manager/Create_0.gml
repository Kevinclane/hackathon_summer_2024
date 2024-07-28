/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 41F1935B
/// @DnDArgument : "funcName" "closeModal"
function closeModal() 
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5342B512
	/// @DnDApplyTo : active_modal
	/// @DnDParent : 41F1935B
	with(active_modal) instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14B09529
	/// @DnDParent : 41F1935B
	/// @DnDArgument : "var" "active_modal"
	active_modal = 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 15E36E6F
	/// @DnDParent : 41F1935B
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}