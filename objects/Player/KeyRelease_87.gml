/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2EB99F90
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3C2A9CA4
	/// @DnDParent : 2EB99F90
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Idle_Up"
	/// @DnDSaveInfo : "spriteind" "Idle_Up"
	sprite_index = Idle_Up;
	image_index += 0;
}