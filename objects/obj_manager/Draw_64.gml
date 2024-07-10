/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7CBD9134
/// @DnDArgument : "expr" "global.window_is_open"
/// @DnDArgument : "not" "1"
if(!(global.window_is_open))
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 29549693
	/// @DnDParent : 7CBD9134
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = true;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 29A6AE65
	/// @DnDParent : 7CBD9134
	/// @DnDArgument : "xpos" "480"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "objectid" "obj_modal"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_modal"
	instance_create_layer(480, 50, "Instances_1", obj_modal);
}