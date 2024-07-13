/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4560B295
/// @DnDArgument : "var" "Player.resources.wheat"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "5"
if(Player.resources.wheat >= 5)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EEF5CC2
	/// @DnDParent : 4560B295
	/// @DnDArgument : "expr" "Player.resources.gold + 10"
	/// @DnDArgument : "var" "Player.resources.gold"
	Player.resources.gold = Player.resources.gold + 10;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 054A5081
	/// @DnDParent : 4560B295
	/// @DnDArgument : "expr" "Player.resources.wheat - 5"
	/// @DnDArgument : "var" "Player.resources.wheat"
	Player.resources.wheat = Player.resources.wheat - 5;
}