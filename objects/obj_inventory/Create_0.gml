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
			/// @DnDArgument : "assignee" "slotInstance"
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			slotInstance = ds_grid_get(inventory, j, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E5A0C36
			/// @DnDParent : 58261EF7
			/// @DnDArgument : "var" "slotInstance.item"
			/// @DnDArgument : "not" "1"
			if(!(slotInstance.item == 0))
			{
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 050DBF22
				/// @DnDParent : 6E5A0C36
				/// @DnDArgument : "msg" "slotInstance.item"
				show_debug_message(string(slotInstance.item));
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7F8541D0
				/// @DnDParent : 6E5A0C36
				/// @DnDArgument : "var" "slotInstance.item.item"
				/// @DnDArgument : "value" "item.item"
				if(slotInstance.item.item == item.item)
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
						/// @DnDArgument : "var" "slotInstance.item.count"
						/// @DnDArgument : "op" "1"
						/// @DnDArgument : "value" "slotInstance.item.stack_size"
						if(slotInstance.item.count < slotInstance.item.stack_size)
						{
							/// @DnDAction : YoYo Games.Common.Return
							/// @DnDVersion : 1
							/// @DnDHash : 5C065E09
							/// @DnDParent : 363A3CE9
							/// @DnDArgument : "value" "slotInstance"
							return slotInstance;
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
						/// @DnDArgument : "value" "slotInstance"
						return slotInstance;
					}
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
			/// @DnDArgument : "assignee" "slotInstance"
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			slotInstance = ds_grid_get(inventory, j, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06E0D779
			/// @DnDParent : 7A3C01BB
			/// @DnDArgument : "var" "slotInstance.item"
			if(slotInstance.item == 0)
			{
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 3D92ACCD
				/// @DnDParent : 06E0D779
				/// @DnDArgument : "msg" ""empty slot instance""
				show_debug_message(string("empty slot instance"));
			
				/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
				/// @DnDVersion : 1
				/// @DnDHash : 54979D56
				/// @DnDParent : 06E0D779
				/// @DnDArgument : "msg" "slotInstance"
				show_debug_message(string(slotInstance));
			
				/// @DnDAction : YoYo Games.Common.Return
				/// @DnDVersion : 1
				/// @DnDHash : 36EE05C8
				/// @DnDParent : 06E0D779
				/// @DnDArgument : "value" "slotInstance"
				return slotInstance;
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
	/// @DnDArgument : "var" "slotInstance"
	/// @DnDArgument : "function" "findMatchingItem"
	/// @DnDArgument : "arg" "item"
	slotInstance = findMatchingItem(item);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3EFB2B2A
	/// @DnDParent : 1C6E8756
	/// @DnDArgument : "var" "slotInstance"
	/// @DnDArgument : "not" "1"
	if(!(slotInstance == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07A19D19
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "expr" "slotInstance.item.count + item.count"
		/// @DnDArgument : "var" "slotInstance.item.count"
		slotInstance.item.count = slotInstance.item.count + item.count;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1ED3FC87
		/// @DnDParent : 3EFB2B2A
		/// @DnDArgument : "expr" "slotInstance.item.count - item.stack_size"
		/// @DnDArgument : "var" "difference"
		difference = slotInstance.item.count - item.stack_size;
	
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
			/// @DnDArgument : "expr" "slotInstance.item.stack_size"
			/// @DnDArgument : "var" "slotInstance.item.count"
			slotInstance.item.count = slotInstance.item.stack_size;
		
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
		/// @DnDArgument : "var" "slotInstance"
		/// @DnDArgument : "function" "findEmptySlot"
		slotInstance = findEmptySlot();
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 164ABD8A
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "msg" "slotInstance"
		show_debug_message(string(slotInstance));
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 721F184C
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "function" "slotInstance.setItem"
		/// @DnDArgument : "arg" "item"
		slotInstance.setItem(item);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 75890003
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "msg" ""setting slot with item""
		show_debug_message(string("setting slot with item"));
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1E96EBC5
		/// @DnDParent : 27D230F1
		/// @DnDArgument : "msg" "slotInstance.item"
		show_debug_message(string(slotInstance.item));
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 75FF1D73
/// @DnDArgument : "funcName" "removeItem"
/// @DnDArgument : "arg" "item"
function removeItem(item) 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7F640117
	/// @DnDInput : 2
	/// @DnDParent : 75FF1D73
	/// @DnDArgument : "var" "slotInstance"
	/// @DnDArgument : "function" "findMatchingItem"
	/// @DnDArgument : "arg" "item"
	/// @DnDArgument : "arg_1" "false"
	slotInstance = findMatchingItem(item, false);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 118E2501
	/// @DnDParent : 75FF1D73
	/// @DnDArgument : "var" "slotInstance"
	/// @DnDArgument : "not" "1"
	if(!(slotInstance == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F245685
		/// @DnDParent : 118E2501
		/// @DnDArgument : "expr" "slotInstance.item.count - item.count"
		/// @DnDArgument : "var" "slotInstance.item.count"
		slotInstance.item.count = slotInstance.item.count - item.count;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B04C3A8
		/// @DnDParent : 118E2501
		/// @DnDArgument : "var" "slotInstance.item.count"
		/// @DnDArgument : "op" "1"
		if(slotInstance.item.count < 0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 43923E05
			/// @DnDParent : 7B04C3A8
			/// @DnDArgument : "var" "difference"
			/// @DnDArgument : "function" "abs"
			/// @DnDArgument : "arg" "slotInstance.item.count"
			difference = abs(slotInstance.item.count);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4848122D
			/// @DnDParent : 7B04C3A8
			/// @DnDArgument : "expr" "difference"
			/// @DnDArgument : "var" "item.count"
			item.count = difference;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 642BE581
			/// @DnDComment : Slot value dupleted.$(13_10)Clear slot
			/// @DnDParent : 7B04C3A8
			/// @DnDArgument : "function" "slotInstance.setItem"
			/// @DnDArgument : "arg" "0"
			slotInstance.setItem(0);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 51744678
			/// @DnDComment : Existing item value was less than subtracted value$(13_10)Remove remaining value.
			/// @DnDParent : 7B04C3A8
			/// @DnDArgument : "function" "removeItem"
			/// @DnDArgument : "arg" "item"
			removeItem(item);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37CDF63A
		/// @DnDParent : 118E2501
		/// @DnDArgument : "var" "slotInstance.item.count"
		if(slotInstance.item.count == 0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 77857056
			/// @DnDComment : Slot value dupleted.$(13_10)Clear slot
			/// @DnDParent : 37CDF63A
			/// @DnDArgument : "function" "slotInstance.setItem"
			/// @DnDArgument : "arg" "0"
			slotInstance.setItem(0);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1BCF0F00
	/// @DnDParent : 75FF1D73
	else
	{
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 1862D20A
		/// @DnDParent : 1BCF0F00
		/// @DnDArgument : "msg" ""Tried to remove item {0}, but was not found""
		show_debug_message(string("Tried to remove item {0}, but was not found"));
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 286C3B70
/// @DnDArgument : "funcName" "findTotalItemCount"
/// @DnDArgument : "arg" "item"
function findTotalItemCount(item) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0328EE57
	/// @DnDParent : 286C3B70
	/// @DnDArgument : "var" "count"
	count = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 719C53FB
	/// @DnDParent : 286C3B70
	/// @DnDArgument : "var" "i"
	i = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 287F6ADD
	/// @DnDParent : 286C3B70
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "bag_height"
	while ((i < bag_height)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31043071
		/// @DnDParent : 287F6ADD
		/// @DnDArgument : "var" "j"
		j = 0;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 7933D1E5
		/// @DnDParent : 287F6ADD
		/// @DnDArgument : "var" "j"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "bag_width"
		while ((j < bag_width)) {
			/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
			/// @DnDVersion : 1
			/// @DnDHash : 7D20B4C5
			/// @DnDParent : 7933D1E5
			/// @DnDArgument : "assignee" "slotInstance"
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			slotInstance = ds_grid_get(inventory, j, i);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42CEED9D
			/// @DnDParent : 7933D1E5
			/// @DnDArgument : "var" "slotInstance.item"
			/// @DnDArgument : "not" "1"
			if(!(slotInstance.item == 0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 17FC482E
				/// @DnDParent : 42CEED9D
				/// @DnDArgument : "var" "slotInstance.item.item"
				/// @DnDArgument : "value" "item.item"
				if(slotInstance.item.item == item.item)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 252FF45A
					/// @DnDParent : 17FC482E
					/// @DnDArgument : "expr" "count + slotInstance.item.count"
					/// @DnDArgument : "var" "count"
					count = count + slotInstance.item.count;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74075814
			/// @DnDParent : 7933D1E5
			/// @DnDArgument : "expr" "j + 1"
			/// @DnDArgument : "var" "j"
			j = j + 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11B48485
		/// @DnDParent : 287F6ADD
		/// @DnDArgument : "expr" "i + 1"
		/// @DnDArgument : "var" "i"
		i = i + 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 779DDDB8
	/// @DnDParent : 286C3B70
	/// @DnDArgument : "value" "count"
	return count;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6063F545
/// @DnDArgument : "funcName" "setDefaultXY"
function setDefaultXY() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 312B5DF2
	/// @DnDParent : 6063F545
	/// @DnDArgument : "expr" "720 - (bag_height * (box_size + slot_buffer) + toolbar_height)"
	/// @DnDArgument : "var" "y_offset"
	y_offset = 720 - (bag_height * (box_size + slot_buffer) + toolbar_height);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C5F484F
	/// @DnDParent : 6063F545
	/// @DnDArgument : "expr" "1280 - bag_width * (box_size + slot_buffer) - 20"
	/// @DnDArgument : "var" "x_offset"
	x_offset = 1280 - bag_width * (box_size + slot_buffer) - 20;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 412D402A
/// @DnDArgument : "funcName" "setupInventorySlots"
function setupInventorySlots() 
{
	/// @DnDAction : YoYo Games.Data Structures.Create_Grid
	/// @DnDVersion : 1
	/// @DnDHash : 76EACE78
	/// @DnDParent : 412D402A
	/// @DnDArgument : "var" "inv"
	/// @DnDArgument : "width" "bag_width"
	/// @DnDArgument : "height" "bag_height"
	inv = ds_grid_create(bag_width, bag_height);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01929673
	/// @DnDParent : 412D402A
	/// @DnDArgument : "expr" "inv"
	/// @DnDArgument : "var" "inventory"
	inventory = inv;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63668258
	/// @DnDParent : 412D402A
	variable = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 510C7C27
	/// @DnDParent : 412D402A
	/// @DnDArgument : "var" "i"
	i = 0;

	/// @DnDAction : YoYo Games.Loops.While_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7FBAE8BD
	/// @DnDParent : 412D402A
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "bag_height"
	while ((i < bag_height)) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0B6589BE
		/// @DnDParent : 7FBAE8BD
		/// @DnDArgument : "var" "j"
		j = 0;
	
		/// @DnDAction : YoYo Games.Loops.While_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 3CC8EEEC
		/// @DnDParent : 7FBAE8BD
		/// @DnDArgument : "var" "j"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "bag_width"
		while ((j < bag_width)) {
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 763C9B6A
			/// @DnDParent : 3CC8EEEC
			/// @DnDArgument : "xpos" "x_offset + (j * slot_buffer)"
			/// @DnDArgument : "ypos" "y_offset"
			/// @DnDArgument : "var" "slotInstance"
			/// @DnDArgument : "objectid" "obj_inventory_item"
			/// @DnDArgument : "layer" ""GUI""
			/// @DnDSaveInfo : "objectid" "obj_inventory_item"
			slotInstance = instance_create_layer(x_offset + (j * slot_buffer), y_offset, "GUI", obj_inventory_item);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07C705AA
			/// @DnDParent : 3CC8EEEC
			/// @DnDArgument : "expr" "x_offset + (j * slot_buffer) + (j * box_size)"
			/// @DnDArgument : "var" "slotInstance.x_position"
			slotInstance.x_position = x_offset + (j * slot_buffer) + (j * box_size);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 668533DF
			/// @DnDParent : 3CC8EEEC
			/// @DnDArgument : "expr" "y_offset"
			/// @DnDArgument : "var" "slotInstance.y_position"
			slotInstance.y_position = y_offset;
		
			/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
			/// @DnDVersion : 1
			/// @DnDHash : 378FD00A
			/// @DnDParent : 3CC8EEEC
			/// @DnDArgument : "var" "inventory"
			/// @DnDArgument : "x" "j"
			/// @DnDArgument : "y" "i"
			/// @DnDArgument : "value" "slotInstance"
			ds_grid_set(inventory, j, i, slotInstance);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57C4CDD8
			/// @DnDParent : 3CC8EEEC
			/// @DnDArgument : "expr" "j + 1"
			/// @DnDArgument : "var" "j"
			j = j + 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3BB7AE16
		/// @DnDParent : 7FBAE8BD
		/// @DnDArgument : "expr" "i + 1"
		/// @DnDArgument : "var" "i"
		i = i + 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 76AA35A0
		/// @DnDParent : 7FBAE8BD
		/// @DnDArgument : "expr" "y_offset + slot_buffer + box_size"
		/// @DnDArgument : "var" "y_offset"
		y_offset = y_offset + slot_buffer + box_size;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0C537017
	/// @DnDParent : 412D402A
	/// @DnDArgument : "function" "setDefaultXY"
	setDefaultXY();
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4D856648
/// @DnDArgument : "funcName" "slotInteract"
/// @DnDArgument : "arg" "slotInstance"
function slotInteract(slotInstance) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7178E984
	/// @DnDComment : Second clicked slot has no item.$(13_10)Move item from first clicked to second.$(13_10)$(13_10)If this is the second item clicked, set slot$(13_10)to active = false
	/// @DnDParent : 4D856648
	/// @DnDArgument : "var" "slotInstance.item"
	if(slotInstance.item == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 399328E4
		/// @DnDParent : 7178E984
		/// @DnDArgument : "var" "draggingSlot"
		/// @DnDArgument : "not" "1"
		if(!(draggingSlot == 0))
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 149D4D41
			/// @DnDParent : 399328E4
			/// @DnDArgument : "function" "slotInstance.setItem"
			/// @DnDArgument : "arg" "draggingSlot.item"
			slotInstance.setItem(draggingSlot.item);
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 057BB91F
			/// @DnDParent : 399328E4
			/// @DnDArgument : "function" "draggingSlot.setItem"
			/// @DnDArgument : "arg" "0"
			draggingSlot.setItem(0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5B072FDC
			/// @DnDParent : 399328E4
			/// @DnDArgument : "var" "draggingSlot"
			draggingSlot = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 50C4AABD
		/// @DnDParent : 7178E984
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62EEF578
			/// @DnDParent : 50C4AABD
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "slotInstance.active"
			slotInstance.active = false;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7534E051
	/// @DnDParent : 4D856648
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 41C45C75
		/// @DnDComment : First slot clicked that has an item
		/// @DnDParent : 7534E051
		/// @DnDArgument : "var" "draggingSlot"
		if(draggingSlot == 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FF7031D
			/// @DnDParent : 41C45C75
			/// @DnDArgument : "expr" "slotInstance"
			/// @DnDArgument : "var" "draggingSlot"
			draggingSlot = slotInstance;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 176D7CEE
		/// @DnDParent : 7534E051
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07C001C9
			/// @DnDComment : Slot clicked on is the same as the$(13_10)first clicked slot.$(13_10)Cancel active slot tracking.
			/// @DnDParent : 176D7CEE
			/// @DnDArgument : "var" "slotInstance"
			/// @DnDArgument : "value" "draggingSlot"
			if(slotInstance == draggingSlot)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5C67B6CE
				/// @DnDParent : 07C001C9
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "draggingSlot.active"
				draggingSlot.active = false;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 311E6C48
				/// @DnDParent : 07C001C9
				/// @DnDArgument : "var" "draggingSlot"
				draggingSlot = 0;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 40E0C23E
			/// @DnDComment : First clicked slot and second clicked$(13_10)are different slots.
			/// @DnDParent : 176D7CEE
			else
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1D333A9A
				/// @DnDComment : First and second clicked slots have the same item.$(13_10)Merge stacks
				/// @DnDParent : 40E0C23E
				/// @DnDArgument : "var" "draggingSlot.item.item"
				/// @DnDArgument : "value" "slotInstance.item.item"
				if(draggingSlot.item.item == slotInstance.item.item)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 63DC20C9
					/// @DnDParent : 1D333A9A
					/// @DnDArgument : "expr" "draggingSlot.item.count + slotInstance.item.count"
					/// @DnDArgument : "var" "totalCount"
					totalCount = draggingSlot.item.count + slotInstance.item.count;
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4A271E3F
					/// @DnDComment : Total count of items greater than max stack size$(13_10)Set second clicked to full stack.$(13_10)Set first clicked to remainder.
					/// @DnDParent : 1D333A9A
					/// @DnDArgument : "var" "totalCount"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "slotInstance.item.stack_size"
					if(totalCount > slotInstance.item.stack_size)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 14FEB171
						/// @DnDParent : 4A271E3F
						/// @DnDArgument : "expr" "slotInstance.item.stack_size"
						/// @DnDArgument : "var" "slotInstance.item.count"
						slotInstance.item.count = slotInstance.item.stack_size;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1AF6DDB7
						/// @DnDParent : 4A271E3F
						/// @DnDArgument : "expr" "totalCount - slotInstance.item.stack_size"
						/// @DnDArgument : "var" "draggingSlot.item.count"
						draggingSlot.item.count = totalCount - slotInstance.item.stack_size;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 22087939
					/// @DnDComment : Total count is equal or less than max stack size$(13_10)Set second clicked to total count$(13_10)Clear first clicked item$(13_10)
					/// @DnDParent : 1D333A9A
					else
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4E506725
						/// @DnDParent : 22087939
						/// @DnDArgument : "expr" "slotInstance.item.count + draggingSlot.item.count"
						/// @DnDArgument : "var" "slotInstance.item.count"
						slotInstance.item.count = slotInstance.item.count + draggingSlot.item.count;
					
						/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 3BDB9D4E
						/// @DnDParent : 22087939
						/// @DnDArgument : "function" "draggingSlot.setItem"
						/// @DnDArgument : "arg" "0"
						draggingSlot.setItem(0);
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0F363652
				/// @DnDComment : First clicked and second clicked are different items$(13_10)Swap their positions
				/// @DnDParent : 40E0C23E
				else
				{
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 28138243
					/// @DnDParent : 0F363652
					/// @DnDArgument : "var" "clone"
					/// @DnDArgument : "function" "variable_clone"
					/// @DnDArgument : "arg" "draggingSlot.item"
					clone = variable_clone(draggingSlot.item);
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 0A276696
					/// @DnDParent : 0F363652
					/// @DnDArgument : "function" "draggingSlot.setItem"
					/// @DnDArgument : "arg" "slotInstance.item"
					draggingSlot.setItem(slotInstance.item);
				
					/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 777B8BF5
					/// @DnDParent : 0F363652
					/// @DnDArgument : "function" "slotInstance.setItem"
					/// @DnDArgument : "arg" "clone"
					slotInstance.setItem(clone);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 715669E5
			/// @DnDParent : 176D7CEE
			/// @DnDArgument : "var" "draggingSlot"
			draggingSlot = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 00FD3E2F
			/// @DnDParent : 176D7CEE
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "draggingSlot.active"
			draggingSlot.active = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 762E2E24
/// @DnDArgument : "function" "setDefaultXY"
setDefaultXY();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6F58D5A8
/// @DnDArgument : "function" "setupInventorySlots"
setupInventorySlots();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0CB85A26
/// @DnDArgument : "function" "addItem"
/// @DnDArgument : "arg" "{item: "wheat", sprite: spr_wheat_icon, count: 5, stack_size: 20}"
addItem({item: "wheat", sprite: spr_wheat_icon, count: 5, stack_size: 20});