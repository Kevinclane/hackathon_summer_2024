/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E220EC3
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0910DC71
	/// @DnDParent : 2E220EC3
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	x += move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1795D2A1
	/// @DnDParent : 2E220EC3
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Walk_Right"
	/// @DnDSaveInfo : "spriteind" "Walk_Right"
	sprite_index = Walk_Right;
	image_index += 0;
}