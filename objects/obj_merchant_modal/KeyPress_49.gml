/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64FF3886
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 51592C11
	/// @DnDParent : 64FF3886
	/// @DnDArgument : "var" "item"
	/// @DnDArgument : "function" "variable_clone"
	/// @DnDArgument : "arg" "obj_items_list.resources.wheat"
	item = variable_clone(obj_items_list.resources.wheat);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 76AC72E6
	/// @DnDParent : 64FF3886
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "function" "obj_inventory.findTotalItemCount"
	/// @DnDArgument : "arg" "item"
	count = obj_inventory.findTotalItemCount(item);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4560B295
	/// @DnDParent : 64FF3886
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "5"
	if(count >= 5)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4CC5C68A
		/// @DnDParent : 4560B295
		/// @DnDArgument : "var" "addItem"
		/// @DnDArgument : "function" "variable_clone"
		/// @DnDArgument : "arg" "obj_items_list.resources.gold"
		addItem = variable_clone(obj_items_list.resources.gold);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4151331B
		/// @DnDParent : 4560B295
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "addItem.count"
		addItem.count = 10;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 36F118BE
		/// @DnDParent : 4560B295
		/// @DnDArgument : "function" "obj_inventory.addItem"
		/// @DnDArgument : "arg" "addItem"
		obj_inventory.addItem(addItem);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04395947
		/// @DnDParent : 4560B295
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "item.count"
		item.count = 5;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 235E6753
		/// @DnDParent : 4560B295
		/// @DnDArgument : "function" "obj_inventory.removeItem"
		/// @DnDArgument : "arg" "item"
		obj_inventory.removeItem(item);
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