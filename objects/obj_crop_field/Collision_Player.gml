/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 393C900D
/// @DnDArgument : "var" "crop_stage"
if(crop_stage == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4487644B
	/// @DnDParent : 393C900D
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Player.interactable"
	Player.interactable = true;

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
		/// @DnDHash : 38007050
		/// @DnDParent : 01AA5159
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "Player.interactable"
		Player.interactable = true;
	
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
		/// @DnDHash : 1D3E4C07
		/// @DnDParent : 191DC0B3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "Player.interactable"
		Player.interactable = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3761DB36
		/// @DnDParent : 191DC0B3
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_interactable"
		is_interactable = false;
	}
}