/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 70007972
/// @DnDArgument : "msg" ""mode: {0}", mode"
show_debug_message(string("mode: {0}", mode));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DB3FC4A
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A973C29
	/// @DnDParent : 6DB3FC4A
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
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 39276D85
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DE85A94
	/// @DnDParent : 39276D85
	/// @DnDArgument : "var" "Player.resources.gold"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "axe_cost.gold"
	if(Player.resources.gold >= axe_cost.gold)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62EA2B41
		/// @DnDParent : 2DE85A94
		/// @DnDArgument : "var" "Player.resources.wood"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "axe_cost.wood"
		if(Player.resources.wood >= axe_cost.wood)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23114947
			/// @DnDParent : 62EA2B41
			/// @DnDArgument : "expr" "Player.resources.gold - axe_cost.gold"
			/// @DnDArgument : "var" "Player.resources.gold"
			Player.resources.gold = Player.resources.gold - axe_cost.gold;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44075206
			/// @DnDParent : 62EA2B41
			/// @DnDArgument : "expr" "Player.resources.wood - axe_cost.wood"
			/// @DnDArgument : "var" "Player.resources.wood"
			Player.resources.wood = Player.resources.wood - axe_cost.wood;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4A6BE1B7
			/// @DnDParent : 62EA2B41
			/// @DnDArgument : "expr" "Player.upgrades.axe + 1"
			/// @DnDArgument : "var" "Player.upgrades.axe"
			Player.upgrades.axe = Player.upgrades.axe + 1;
		}
	}
}