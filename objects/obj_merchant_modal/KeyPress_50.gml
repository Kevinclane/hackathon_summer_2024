/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A973C29
/// @DnDArgument : "var" "Player.resources.radish"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(Player.resources.radish >= 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C4D96FE
	/// @DnDParent : 3A973C29
	/// @DnDArgument : "expr" "Player.resources.gold + 10"
	/// @DnDArgument : "var" "Player.resources.gold"
	Player.resources.gold = Player.resources.gold + 10;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 466F3C1C
	/// @DnDParent : 3A973C29
	/// @DnDArgument : "expr" "Player.resources.radish - 5"
	/// @DnDArgument : "var" "Player.resources.radish"
	Player.resources.radish = Player.resources.radish - 5;
}