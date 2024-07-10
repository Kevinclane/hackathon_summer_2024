/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 48CE9552
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 144F2AF7
	/// @DnDParent : 48CE9552
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += -move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 69BC9B0C
	/// @DnDParent : 48CE9552
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Walk_Left"
	/// @DnDSaveInfo : "spriteind" "Walk_Left"
	sprite_index = Walk_Left;
	image_index += 0;
}