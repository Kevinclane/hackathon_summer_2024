/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56DA1E1A
/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
/// @DnDArgument : "not" "1"
if(!(obj_interactable_manager.interactable_object == 0))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 1C01BD3F
	/// @DnDParent : 56DA1E1A
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" ""
	/// @DnDArgument : "object" "obj_interactable_manager.interactable_object"
	/// @DnDArgument : "not" "1"
	var l1C01BD3F_0 = instance_place(x + 0, y + 0, [obj_interactable_manager.interactable_object]);
	if (!(l1C01BD3F_0 > 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 031BB835
		/// @DnDParent : 1C01BD3F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "obj_interactable_manager.pending_clear"
		obj_interactable_manager.pending_clear = true;
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 0B37D212
		/// @DnDParent : 1C01BD3F
		/// @DnDArgument : "msg" ""resetting""
		show_debug_message(string("resetting"));
	}
}