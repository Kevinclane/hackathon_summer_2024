/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 393C900D
/// @DnDArgument : "var" "crop_linked.crop_stage"
if(crop_linked.crop_stage == 0)
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 4AFADC7E
	/// @DnDApplyTo : crop_1
	/// @DnDParent : 393C900D
	with(crop_1) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 395448C6
		/// @DnDParent : 4AFADC7E
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "is_interactable"
		is_interactable = true;
	}
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
	/// @DnDArgument : "var" "crop_linked.crop_stage"
	/// @DnDArgument : "value" "4"
	if(crop_linked.crop_stage == 4)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38007050
		/// @DnDParent : 01AA5159
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "Player.interactable"
		Player.interactable = true;
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 38487CD6
		/// @DnDApplyTo : crop_1
		/// @DnDParent : 01AA5159
		with(crop_1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 42D957F3
			/// @DnDParent : 38487CD6
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_interactable"
			is_interactable = true;
		}
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
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 3A7EFED1
		/// @DnDApplyTo : crop_1
		/// @DnDParent : 191DC0B3
		with(crop_1) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3761DB36
			/// @DnDParent : 3A7EFED1
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "is_interactable"
			is_interactable = false;
		}
	}
}