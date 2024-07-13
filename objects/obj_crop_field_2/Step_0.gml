/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44E9C26A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "is_interactable"
is_interactable = false;

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
			}
		
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
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 6F0DDFBA
			/// @DnDParent : 5680C249
			/// @DnDArgument : "expr" "crop_stage"
			var l6F0DDFBA_0 = crop_stage;
			switch(l6F0DDFBA_0)
			{
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 06D9FC9B
				/// @DnDParent : 6F0DDFBA
				/// @DnDArgument : "const" "1"
				case 1:
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 4F19D9F5
					/// @DnDParent : 06D9FC9B
					/// @DnDArgument : "spriteind" "CropsStage1"
					/// @DnDSaveInfo : "spriteind" "CropsStage1"
					sprite_index = CropsStage1;
					image_index = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1B8F2AB6
					/// @DnDParent : 06D9FC9B
					/// @DnDArgument : "expr" "noone"
					/// @DnDArgument : "var" "modal_option"
					modal_option = noone;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 7AD20398
				/// @DnDParent : 6F0DDFBA
				/// @DnDArgument : "const" "2"
				case 2:
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 076FFC8F
					/// @DnDParent : 7AD20398
					/// @DnDArgument : "spriteind" "CropsStage2"
					/// @DnDSaveInfo : "spriteind" "CropsStage2"
					sprite_index = CropsStage2;
					image_index = 0;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 1993A9BC
				/// @DnDParent : 6F0DDFBA
				/// @DnDArgument : "const" "3"
				case 3:
					/// @DnDAction : YoYo Games.Instances.Set_Sprite
					/// @DnDVersion : 1
					/// @DnDHash : 236FB9E3
					/// @DnDParent : 1993A9BC
					/// @DnDArgument : "spriteind" "CropsStage3"
					/// @DnDSaveInfo : "spriteind" "CropsStage3"
					sprite_index = CropsStage3;
					image_index = 0;
					break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 1CF5C795
				/// @DnDParent : 6F0DDFBA
				/// @DnDArgument : "const" "4"
				case 4:
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 24EAA62F
					/// @DnDParent : 1CF5C795
					/// @DnDArgument : "var" "crop_type"
					/// @DnDArgument : "value" ""wheat""
					if(crop_type == "wheat")
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 3A3CAFEE
						/// @DnDParent : 24EAA62F
						/// @DnDArgument : "spriteind" "CropsStage4_Wheat"
						/// @DnDSaveInfo : "spriteind" "CropsStage4_Wheat"
						sprite_index = CropsStage4_Wheat;
						image_index = 0;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 49F617B1
					/// @DnDParent : 1CF5C795
					else
					{
						/// @DnDAction : YoYo Games.Instances.Set_Sprite
						/// @DnDVersion : 1
						/// @DnDHash : 42447004
						/// @DnDParent : 49F617B1
						/// @DnDArgument : "spriteind" "CropsStage4_Radish"
						/// @DnDSaveInfo : "spriteind" "CropsStage4_Radish"
						sprite_index = CropsStage4_Radish;
						image_index = 0;
					}
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 66971C89
					/// @DnDParent : 1CF5C795
					/// @DnDArgument : "steps" "-1"
					alarm_set(0, -1);
					break;
			}
			break;
	}
}