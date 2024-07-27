/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5BCAE51E
/// @DnDArgument : "expr" "is_interacting"
if(is_interacting)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0A38EF25
	/// @DnDParent : 5BCAE51E
	/// @DnDArgument : "key" "ord("F")"
	/// @DnDArgument : "not" "1"
	var l0A38EF25_0;
	l0A38EF25_0 = keyboard_check(ord("F"));
	if (!l0A38EF25_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04C27D31
		/// @DnDParent : 0A38EF25
		/// @DnDArgument : "var" "interactable_object"
		/// @DnDArgument : "not" "1"
		if(!(interactable_object == 0))
		{
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 49680652
			/// @DnDParent : 04C27D31
			/// @DnDArgument : "msg" ""F not detected""
			show_debug_message(string("F not detected"));
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 42C70CB6
			/// @DnDParent : 04C27D31
			/// @DnDArgument : "function" "interactable_object.endInteract"
			interactable_object.endInteract();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A8C8F48
			/// @DnDParent : 04C27D31
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_interacting"
			is_interacting = false;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 10908B5B
/// @DnDArgument : "expr" "pending_clear"
if(pending_clear)
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 64786409
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "msg" ""clearing""
	show_debug_message(string("clearing"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35723EE1
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "var" "interactable_object"
	interactable_object = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6421793B
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_interacting"
	is_interacting = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 320B9B7F
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pending_clear"
	pending_clear = false;

	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 33B3AF40
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "object" "obj_interactable_manager"
	/// @DnDSaveInfo : "object" "obj_interactable_manager"
	variable = instance_number(obj_interactable_manager);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 697FC2D4
	/// @DnDParent : 10908B5B
	/// @DnDArgument : "msg" "variable"
	show_debug_message(string(variable));
}