/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AE3C668
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "bag_height"
bag_height = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59E40504
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "bag_width"
bag_width = 4;

/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 1827DD58
/// @DnDArgument : "var" "inv"
/// @DnDArgument : "width" "bag_width"
/// @DnDArgument : "height" "bag_height"
inv = ds_grid_create(bag_width, bag_height);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B09608B
/// @DnDInput : 2
/// @DnDArgument : "expr" "{item: 0, count: 0, sprite: 0}"
/// @DnDArgument : "var" "empty_slot"
/// @DnDArgument : "var_1" "i"
empty_slot = {item: 0, count: 0, sprite: 0};
i = 0;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 13AD006B
/// @DnDArgument : "var" "i"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "bag_height"
while ((i < bag_height)) {
	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 30803F0D
	/// @DnDInput : 4
	/// @DnDParent : 13AD006B
	/// @DnDArgument : "var" "inv"
	/// @DnDArgument : "y" "i"
	/// @DnDArgument : "value" "empty_slot"
	/// @DnDArgument : "x_1" "1"
	/// @DnDArgument : "y_1" "i"
	/// @DnDArgument : "value_1" "empty_slot"
	/// @DnDArgument : "x_2" "2"
	/// @DnDArgument : "y_2" "i"
	/// @DnDArgument : "value_2" "empty_slot"
	/// @DnDArgument : "x_3" "3"
	/// @DnDArgument : "y_3" "i"
	/// @DnDArgument : "value_3" "empty_slot"
	ds_grid_set(inv, 0, i, empty_slot);
	ds_grid_set(inv, 1, i, empty_slot);
	ds_grid_set(inv, 2, i, empty_slot);
	ds_grid_set(inv, 3, i, empty_slot);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55ACDBEF
	/// @DnDParent : 13AD006B
	/// @DnDArgument : "expr" "i + 1"
	/// @DnDArgument : "var" "i"
	i = i + 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71B66373
/// @DnDArgument : "expr" "inv"
/// @DnDArgument : "var" "inventory"
inventory = inv;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 35EF7543
/// @DnDInput : 2
/// @DnDArgument : "funcName" "findMatchingItem"
/// @DnDArgument : "arg" "item"
/// @DnDArgument : "arg_1" "needsStackRoom=true"
function findMatchingItem(item, needsStackRoom=true) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 465F3A61
	/// @DnDParent : 35EF7543
	/// @DnDArgument : "var" "i"
	i = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 09172A9C
	/// @DnDParent : 35EF7543
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "bag_height"
	while ((i < bag_height)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C401FF9
		/// @DnDParent : 09172A9C
		/// @DnDArgument : "var" "j"
		j = 0;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 58261EF7
		/// @DnDParent : 09172A9C
		/// @DnDArgument : "var" "j"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "bag_width"
		while ((j < bag_width)) {
			/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 3DFB373D
			/// @DnDParent : 58261EF7
			/// @DnDArgument : "assignee" "value"
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			value = ds_grid_get(inventory, j, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7F8541D0
			/// @DnDParent : 58261EF7
			/// @DnDArgument : "var" "value.item"
			/// @DnDArgument : "value" "item.item"
			if(value.item == item.item)
			{
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 46237318
				/// @DnDParent : 7F8541D0
				/// @DnDArgument : "expr" "needsStackRoom"
				if(needsStackRoom)
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 363A3CE9
					/// @DnDParent : 46237318
					/// @DnDArgument : "var" "value.count"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "value.stack_size"
					if(value.count < value.stack_size)
					{
						/// @DnDAction : YoYo Games.Common.Return
						/// @DnDVersion : 1
						/// @DnDHash : 5C065E09
						/// @DnDParent : 363A3CE9
						/// @DnDArgument : "value" "{x: j, y: i}"
						return {x: j, y: i};
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3FF20FFE
				/// @DnDParent : 7F8541D0
				else
				{
					/// @DnDAction : YoYo Games.Common.Return
					/// @DnDVersion : 1
					/// @DnDHash : 0A3975B7
					/// @DnDParent : 3FF20FFE
					/// @DnDArgument : "value" "{x: j, y: i}"
					return {x: j, y: i};
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EBD8F1D
			/// @DnDParent : 58261EF7
			/// @DnDArgument : "expr" "j + 1"
			/// @DnDArgument : "var" "j"
			j = j + 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3522FF75
		/// @DnDParent : 09172A9C
		/// @DnDArgument : "expr" "i + 1"
		/// @DnDArgument : "var" "i"
		i = i + 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 06FAF775
	/// @DnDParent : 35EF7543
	/// @DnDArgument : "value" "0"
	return 0;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 406D2203
/// @DnDArgument : "funcName" "findEmptySlot"
function findEmptySlot() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2ED2B6F9
	/// @DnDParent : 406D2203
	/// @DnDArgument : "var" "i"
	i = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 51D8184B
	/// @DnDParent : 406D2203
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "bag_height"
	while ((i < bag_height)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0715DB7F
		/// @DnDParent : 51D8184B
		/// @DnDArgument : "var" "j"
		j = 0;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 7A3C01BB
		/// @DnDParent : 51D8184B
		/// @DnDArgument : "var" "j"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "bag_width"
		while ((j < bag_width)) {
			/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 72BE0683
			/// @DnDParent : 7A3C01BB
			/// @DnDArgument : "assignee" "value"
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			value = ds_grid_get(inventory, j, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06E0D779
			/// @DnDParent : 7A3C01BB
			/// @DnDArgument : "var" "value.item"
			if(value.item == 0)
			{
				/// @DnDAction : YoYo Games.Common.Return
				/// @DnDVersion : 1
				/// @DnDHash : 36EE05C8
				/// @DnDParent : 06E0D779
				/// @DnDArgument : "value" "{x: j, y: i}"
				return {x: j, y: i};
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B3CFF8D
			/// @DnDParent : 7A3C01BB
			/// @DnDArgument : "expr" "j + 1"
			/// @DnDArgument : "var" "j"
			j = j + 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3215D8A3
		/// @DnDParent : 51D8184B
		/// @DnDArgument : "expr" "i + 1"
		/// @DnDArgument : "var" "i"
		i = i + 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 19EE0522
	/// @DnDParent : 406D2203
	/// @DnDArgument : "value" "0"
	return 0;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1C6E8756
/// @DnDArgument : "funcName" "addItem"
/// @DnDArgument : "arg" "item"
function addItem(item) 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 43A5145D
	/// @DnDParent : 1C6E8756
	/// @DnDArgument : "var" "existingItemCoords"
	/// @DnDArgument : "function" "findMatchingItem"
	/// @DnDArgument : "arg" "item"
	existingItemCoords = findMatchingItem(item);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EFB2B2A
	/// @DnDParent : 1C6E8756
	/// @DnDArgument : "var" "existingItemCoords"
	/// @DnDArgument : "not" "1"
	if(!(existingItemCoords == 0))
	{
		/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 0BD32C8C
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "assignee" "existingItem"
		/// @DnDArgument : "var" "inventory"
		/// @DnDArgument : "x" "existingItemCoords.x"
		/// @DnDArgument : "y" "existingItemCoords.y"
		existingItem = ds_grid_get(inventory, existingItemCoords.x, existingItemCoords.y);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07A19D19
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "expr" "existingItem.count + item.count"
		/// @DnDArgument : "var" "existingItem.count"
		existingItem.count = existingItem.count + item.count;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ED3FC87
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "expr" "existingItem.count - item.stack_size"
		/// @DnDArgument : "var" "difference"
		difference = existingItem.count - item.stack_size;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B616207
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "var" "difference"
		/// @DnDArgument : "op" "2"
		if(difference > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20ECC051
			/// @DnDParent : 3B616207
			/// @DnDArgument : "expr" "existingItem.stack_size"
			/// @DnDArgument : "var" "existingItem.count"
			existingItem.count = existingItem.stack_size;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 304D7EA4
			/// @DnDParent : 3B616207
			/// @DnDArgument : "expr" "difference"
			/// @DnDArgument : "var" "item.count"
			item.count = difference;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 60F743EF
			/// @DnDParent : 3B616207
			/// @DnDArgument : "function" "addItem"
			/// @DnDArgument : "arg" "item"
			addItem(item);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 27D230F1
	/// @DnDParent : 1C6E8756
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 15E3BA99
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "var" "slot"
		/// @DnDArgument : "function" "findEmptySlot"
		slot = findEmptySlot();
	
		/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 37125E72
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "var" "inventory"
		/// @DnDArgument : "x" "slot.x"
		/// @DnDArgument : "y" "slot.y"
		/// @DnDArgument : "value" "item"
		ds_grid_set(inventory, slot.x, slot.y, item);
	}
}