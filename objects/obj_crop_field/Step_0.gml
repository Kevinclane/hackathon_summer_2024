/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F08564E
/// @DnDArgument : "var" "action_needed"
/// @DnDArgument : "value" ""next_stage""
if(action_needed == "next_stage")
{
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 57BC90AA
	/// @DnDParent : 0F08564E
	/// @DnDArgument : "expr" "action_needed"
	var l57BC90AA_0 = action_needed;
	switch(l57BC90AA_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5680C249
		/// @DnDParent : 57BC90AA
		/// @DnDArgument : "const" ""next_stage""
		case "next_stage":
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 4153B880
			/// @DnDParent : 5680C249
			/// @DnDArgument : "steps" "10 * 60"
			alarm_set(0, 10 * 60);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69613F60
			/// @DnDParent : 5680C249
			/// @DnDArgument : "expr" """"
			/// @DnDArgument : "var" "action_needed"
			action_needed = "";
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E17342D
			/// @DnDParent : 5680C249
			/// @DnDArgument : "var" "crop_stage"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "4"
			if(!(crop_stage == 4))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2AB079B0
				/// @DnDParent : 2E17342D
				/// @DnDArgument : "expr" "crop_stage + 1"
				/// @DnDArgument : "var" "crop_stage"
				crop_stage = crop_stage + 1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 10B216B7
				/// @DnDParent : 2E17342D
				/// @DnDArgument : "var" "crop_stage"
				/// @DnDArgument : "value" "4"
				if(crop_stage == 4)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1259C95C
					/// @DnDParent : 10B216B7
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "is_interactable"
					is_interactable = true;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 3598B3AA
				/// @DnDParent : 2E17342D
				else
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 32B4F3A4
					/// @DnDParent : 3598B3AA
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "is_interactable"
					is_interactable = false;
				}
			}
			break;
	}
}