/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35B554DE
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 137371D6
	/// @DnDParent : 35B554DE
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = true;
}