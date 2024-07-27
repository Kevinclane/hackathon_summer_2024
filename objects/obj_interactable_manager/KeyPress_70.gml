/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55D3BD85
/// @DnDArgument : "var" "interactable_object"
/// @DnDArgument : "not" "1"
if(!(interactable_object == 0))
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1E71123B
	/// @DnDParent : 55D3BD85
	/// @DnDArgument : "function" "interactable_object.interact"
	interactable_object.interact();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32A5F655
	/// @DnDParent : 55D3BD85
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_interacting"
	is_interacting = true;
}