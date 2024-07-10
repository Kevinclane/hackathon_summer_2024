/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35D6D35D
/// @DnDArgument : "expr" "is_active"
if(is_active)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 68E2BDE7
	/// @DnDParent : 35D6D35D
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.window_is_open"
	global.window_is_open = true;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 15D426DD
	/// @DnDParent : 35D6D35D
	/// @DnDArgument : "value" "self"
	/// @DnDArgument : "var" "global.active_instance"
	global.active_instance = self;
}