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

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 376CE7E5
	/// @DnDParent : 249564A0
	/// @DnDArgument : "msg" ""Set to Buy""
	show_debug_message(string("Set to Buy"));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 07C2E0C1
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5254A564
	/// @DnDParent : 07C2E0C1
	/// @DnDArgument : "var" "mode"
	/// @DnDArgument : "value" ""Buy""
	if(mode == "Buy")
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 33354C2C
		/// @DnDParent : 5254A564
		/// @DnDArgument : "expr" ""Sell""
		/// @DnDArgument : "var" "mode"
		mode = "Sell";
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 7D557D47
		/// @DnDParent : 5254A564
		/// @DnDArgument : "msg" ""Set to Sell""
		show_debug_message(string("Set to Sell"));
	}
}