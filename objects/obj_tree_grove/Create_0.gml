/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 328158C5
/// @DnDArgument : "funcName" "calculate_harvest_value"
function calculate_harvest_value() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 0D39EFDF
	/// @DnDParent : 328158C5
	/// @DnDArgument : "value" "base_harvest_value + Player.upgrades.axe"
	return base_harvest_value + Player.upgrades.axe;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 70CE11E0
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1FC50F74
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "var" "harvest_value"
	/// @DnDArgument : "function" "calculate_harvest_value"
	harvest_value = calculate_harvest_value();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 198412CF
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "expr" "Player.resources.wood + harvest_value"
	/// @DnDArgument : "var" "Player.resources.wood"
	Player.resources.wood = Player.resources.wood + harvest_value;
}