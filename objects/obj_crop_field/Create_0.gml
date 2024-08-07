/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 69F355D8
/// @DnDArgument : "funcName" "calculate_harvest_value"
function calculate_harvest_value() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 72373D96
	/// @DnDParent : 69F355D8
	/// @DnDArgument : "value" "base_harvest_value + (5 * Player.upgrades.plow)"
	return base_harvest_value + (5 * Player.upgrades.plow);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 059159A8
/// @DnDArgument : "funcName" "reset_instance"
function reset_instance() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D0A9F45
	/// @DnDParent : 059159A8
	/// @DnDArgument : "var" "crop_type"
	crop_type = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5326FFDB
	/// @DnDParent : 059159A8
	/// @DnDArgument : "var" "crop_stage"
	crop_stage = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EC089A4
	/// @DnDParent : 059159A8
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "action_needed"
	action_needed = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B365A60
	/// @DnDParent : 059159A8
	/// @DnDArgument : "expr" ""crop_field_empty""
	/// @DnDArgument : "var" "modal_option"
	modal_option = "crop_field_empty";

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2D9B82CB
	/// @DnDParent : 059159A8
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11B3F9AD
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 16D3890D
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "var" "harvest_value"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "calculate_harvest_value"
	var harvest_value = calculate_harvest_value();

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6AEFFA24
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "expr" "crop_type"
	var l6AEFFA24_0 = crop_type;
	switch(l6AEFFA24_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2AE216C6
		/// @DnDParent : 6AEFFA24
		/// @DnDArgument : "const" ""wheat""
		case "wheat":
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 35E9ACEA
			/// @DnDParent : 2AE216C6
			/// @DnDArgument : "var" "item"
			/// @DnDArgument : "function" "variable_clone"
			/// @DnDArgument : "arg" "obj_items_list.resources.wheat"
			item = variable_clone(obj_items_list.resources.wheat);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3123B550
		/// @DnDParent : 6AEFFA24
		/// @DnDArgument : "const" ""radish""
		case "radish":
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 1E884840
			/// @DnDParent : 3123B550
			/// @DnDArgument : "var" "item"
			/// @DnDArgument : "function" "variable_clone"
			/// @DnDArgument : "arg" "obj_items_list.resources.radish"
			item = variable_clone(obj_items_list.resources.radish);
			break;
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3370C6B3
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "expr" "harvest_value"
	/// @DnDArgument : "var" "item.count"
	item.count = harvest_value;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 40E11F13
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "function" "obj_inventory.addItem"
	/// @DnDArgument : "arg" "item"
	obj_inventory.addItem(item);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6A7E4A6D
/// @DnDArgument : "funcName" "interact"
function interact() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 76406CA6
	/// @DnDParent : 6A7E4A6D
	/// @DnDArgument : "expr" "is_interactable"
	if(is_interactable)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64A15357
		/// @DnDParent : 76406CA6
		/// @DnDArgument : "var" "crop_stage"
		/// @DnDArgument : "value" "4"
		if(crop_stage == 4)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 42396993
			/// @DnDParent : 64A15357
			/// @DnDArgument : "function" "harvest"
			harvest();
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 41CAB83C
			/// @DnDParent : 64A15357
			/// @DnDArgument : "function" "reset_instance"
			reset_instance();
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6DAD33A6
		/// @DnDParent : 76406CA6
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 07301720
			/// @DnDParent : 6DAD33A6
			/// @DnDArgument : "var" "obj_interactable_manager.active_modal"
			if(obj_interactable_manager.active_modal == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5639B991
				/// @DnDParent : 07301720
				/// @DnDArgument : "var" "modal"
				/// @DnDArgument : "objectid" "obj_crop_modal"
				/// @DnDArgument : "layer" ""Instances_1""
				/// @DnDSaveInfo : "objectid" "obj_crop_modal"
				modal = instance_create_layer(0, 0, "Instances_1", obj_crop_modal);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 759103AB
				/// @DnDParent : 07301720
				/// @DnDArgument : "expr" "self"
				/// @DnDArgument : "var" "modal.linked_crop"
				modal.linked_crop = self;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 32F0F760
				/// @DnDParent : 07301720
				/// @DnDArgument : "expr" "modal"
				/// @DnDArgument : "var" "obj_interactable_manager.active_modal"
				obj_interactable_manager.active_modal = modal;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 515C451F
/// @DnDArgument : "funcName" "endInteract"
function endInteract() 
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 3F58C85F
	/// @DnDParent : 515C451F
	/// @DnDArgument : "msg" ""No endInteract registered""
	show_debug_message(string("No endInteract registered"));
}