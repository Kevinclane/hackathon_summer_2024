/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6DB3FC4A
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 73A0EED0
	/// @DnDParent : 6DB3FC4A
	/// @DnDArgument : "var" "item"
	/// @DnDArgument : "function" "variable_clone"
	/// @DnDArgument : "arg" "obj_items_list.radish"
	item = variable_clone(obj_items_list.radish);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 51EFAED2
	/// @DnDParent : 6DB3FC4A
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "function" "obj_inventory.findTotalItemCount"
	/// @DnDArgument : "arg" "item"
	count = obj_inventory.findTotalItemCount(item);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6583D2E0
	/// @DnDParent : 6DB3FC4A
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(count >= 5)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 20C1961C
		/// @DnDParent : 6583D2E0
		/// @DnDArgument : "var" "addItem"
		/// @DnDArgument : "function" "variable_clone"
		/// @DnDArgument : "arg" "obj_items_list.gold"
		addItem = variable_clone(obj_items_list.gold);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 03A246B4
		/// @DnDParent : 6583D2E0
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "addItem.count"
		addItem.count = 5;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0734432E
		/// @DnDParent : 6583D2E0
		/// @DnDArgument : "function" "obj_inventory.addItem"
		/// @DnDArgument : "arg" "addItem"
		obj_inventory.addItem(addItem);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B3B1174
		/// @DnDParent : 6583D2E0
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "item.count"
		item.count = 5;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4AD817FC
		/// @DnDParent : 6583D2E0
		/// @DnDArgument : "function" "obj_inventory.removeItem"
		/// @DnDArgument : "arg" "item"
		obj_inventory.removeItem(item);
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