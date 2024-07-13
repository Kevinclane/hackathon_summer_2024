/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 555EE383
/// @DnDArgument : "msg" ""mode: {0}", mode"
show_debug_message(string("mode: {0}", mode));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64FF3886
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4560B295
	/// @DnDParent : 64FF3886
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
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B6FE409
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06C18B4A
	/// @DnDParent : 5B6FE409
	/// @DnDArgument : "var" "Player.resources.gold"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "plow_cost.gold"
	if(Player.resources.gold >= plow_cost.gold)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4A68E766
		/// @DnDParent : 06C18B4A
		/// @DnDArgument : "var" "Player.resources.wood"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "plow_cost.wood"
		if(Player.resources.wood >= plow_cost.wood)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 562BD6D3
			/// @DnDParent : 4A68E766
			/// @DnDArgument : "expr" "Player.resources.gold - plow_cost.gold"
			/// @DnDArgument : "var" "Player.resources.gold"
			Player.resources.gold = Player.resources.gold - plow_cost.gold;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 43519B42
			/// @DnDParent : 4A68E766
			/// @DnDArgument : "expr" "Player.resources.wood - plow_cost.wood"
			/// @DnDArgument : "var" "Player.resources.wood"
			Player.resources.wood = Player.resources.wood - plow_cost.wood;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 28F594FA
			/// @DnDParent : 4A68E766
			/// @DnDArgument : "expr" "Player.upgrades.plow + 1"
			/// @DnDArgument : "var" "Player.upgrades.plow"
			Player.upgrades.plow = Player.upgrades.plow + 1;
		}
	}
}