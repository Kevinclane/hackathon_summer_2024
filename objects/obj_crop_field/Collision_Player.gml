/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 144F2958
/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "self"
if(!(obj_interactable_manager.interactable_object == self))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 29DD705C
	/// @DnDParent : 144F2958
	/// @DnDArgument : "msg" ""setting crop field""
	show_debug_message(string("setting crop field"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 54B2C927
	/// @DnDParent : 144F2958
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
	obj_interactable_manager.interactable_object = self;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 393C900D
	/// @DnDParent : 144F2958
	/// @DnDArgument : "var" "crop_stage"
	if(crop_stage == 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 395448C6
		/// @DnDParent : 393C900D
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_interactable"
		is_interactable = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 150EA281
	/// @DnDParent : 144F2958
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01AA5159
		/// @DnDParent : 150EA281
		/// @DnDArgument : "var" "crop_stage"
		/// @DnDArgument : "value" "4"
		if(crop_stage == 4)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42D957F3
			/// @DnDParent : 01AA5159
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_interactable"
			is_interactable = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 191DC0B3
		/// @DnDParent : 150EA281
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3761DB36
			/// @DnDParent : 191DC0B3
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_interactable"
			is_interactable = false;
		}
	}
}