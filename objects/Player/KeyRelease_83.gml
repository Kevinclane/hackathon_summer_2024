/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 163F37AD
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 157EAC10
	/// @DnDParent : 163F37AD
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Idle_Down"
	/// @DnDSaveInfo : "spriteind" "Idle_Down"
	sprite_index = Idle_Down;
	image_index += 0;
}