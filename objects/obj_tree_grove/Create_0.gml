/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 70CE11E0
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 198412CF
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "expr" "Player.resources.wood + harvest_value"
	/// @DnDArgument : "var" "Player.resources.wood"
	Player.resources.wood = Player.resources.wood + harvest_value;
}