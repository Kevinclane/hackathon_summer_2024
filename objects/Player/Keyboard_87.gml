/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1B794998
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0910DC71
	/// @DnDParent : 1B794998
	/// @DnDArgument : "value" "-move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += -move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5FA05F5F
	/// @DnDParent : 1B794998
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Walk_Up"
	/// @DnDSaveInfo : "spriteind" "Walk_Up"
	sprite_index = Walk_Up;
	image_index += 0;
}