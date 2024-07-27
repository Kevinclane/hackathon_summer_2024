/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 756BA786
/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "self"
if(!(obj_interactable_manager.interactable_object == self))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 26987C7E
	/// @DnDParent : 756BA786
	/// @DnDArgument : "msg" ""setting merchant""
	show_debug_message(string("setting merchant"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45CC6CFC
	/// @DnDParent : 756BA786
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
	obj_interactable_manager.interactable_object = self;
}