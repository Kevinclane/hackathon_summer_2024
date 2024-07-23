/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A66DC43
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 25D29150
	/// @DnDParent : 2A66DC43
	/// @DnDArgument : "key" "ord("F")"
	/// @DnDArgument : "not" "1"
	var l25D29150_0;
	l25D29150_0 = keyboard_check_pressed(ord("F"));
	if (!l25D29150_0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 77E3875E
		/// @DnDParent : 25D29150
		/// @DnDArgument : "function" "endChopping"
		endChopping();
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 725CAC72
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_interactable"
is_interactable = false;