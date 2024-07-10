/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5A898C2B
/// @DnDArgument : "expr" "global.game_is_paused"
/// @DnDArgument : "not" "1"
if(!(global.game_is_paused))
{
	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 0910DC71
	/// @DnDParent : 5A898C2B
	/// @DnDArgument : "value" "move_speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "instvar" "1"
	y += move_speed;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1795D2A1
	/// @DnDParent : 5A898C2B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Walk_Down"
	/// @DnDSaveInfo : "spriteind" "Walk_Down"
	sprite_index = Walk_Down;
	image_index += 0;
}