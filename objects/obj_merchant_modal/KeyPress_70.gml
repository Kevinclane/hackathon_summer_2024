/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 249564A0
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56A8BB88
	/// @DnDParent : 249564A0
	/// @DnDArgument : "expr" ""Buy""
	/// @DnDArgument : "var" "mode"
	mode = "Buy";
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 07C2E0C1
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33354C2C
	/// @DnDParent : 07C2E0C1
	/// @DnDArgument : "expr" ""Sell""
	/// @DnDArgument : "var" "mode"
	mode = "Sell";
}