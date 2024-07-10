/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4B2DE458
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 765A1BCE
	/// @DnDParent : 4B2DE458
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Idle_Right"
	/// @DnDSaveInfo : "spriteind" "Idle_Right"
	sprite_index = Idle_Right;
	image_index += 0;
}