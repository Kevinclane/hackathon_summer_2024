/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4B512AEA
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3875FC03
	/// @DnDParent : 4B512AEA
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Idle_Left"
	/// @DnDSaveInfo : "spriteind" "Idle_Left"
	sprite_index = Idle_Left;
	image_index += 0;
}