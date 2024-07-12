/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35D6D35D
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FC716FF
	/// @DnDParent : 35D6D35D
	/// @DnDArgument : "var" "modal_option"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(modal_option == noone))
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 68E2BDE7
		/// @DnDParent : 3FC716FF
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.window_is_open"
		global.window_is_open = true;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 15D426DD
		/// @DnDParent : 3FC716FF
		/// @DnDArgument : "value" "self"
		/// @DnDArgument : "var" "global.active_instance"
		global.active_instance = self;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 09D54667
	/// @DnDParent : 35D6D35D
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 523DEB7C
		/// @DnDParent : 09D54667
		/// @DnDArgument : "function" "reset_instance"
		reset_instance();
	}
}