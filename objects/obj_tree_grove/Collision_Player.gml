/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F596A51
/// @DnDArgument : "var" "obj_interactable_parent.interactable_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "self"
if(!(obj_interactable_manager.interactable_object == self))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 65E6E2C1
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "msg" ""setting trees""
	show_debug_message(string("setting trees"));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71049BA8
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "obj_interactable_parent.interactable_object"
	obj_interactable_manager.interactable_object = self;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E098834
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Player.interactable"
	Player.interactable = true;
}