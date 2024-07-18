/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4D4ACAD7
/// @DnDArgument : "expr" "crop_stage"
var l4D4ACAD7_0 = crop_stage;
switch(l4D4ACAD7_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 37B2AC84
	/// @DnDParent : 4D4ACAD7
	case 0:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 267F27A7
		/// @DnDParent : 37B2AC84
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsBlank"
		/// @DnDSaveInfo : "sprite" "CropsBlank"
		draw_sprite(CropsBlank, 0, x + 32, y + 32);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 31CE0AC7
	/// @DnDParent : 4D4ACAD7
	/// @DnDArgument : "const" "1"
	case 1:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C4F6E96
		/// @DnDParent : 31CE0AC7
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsStage1"
		/// @DnDSaveInfo : "sprite" "CropsStage1"
		draw_sprite(CropsStage1, 0, x + 32, y + 32);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68DBB53A
		/// @DnDParent : 31CE0AC7
		/// @DnDArgument : "expr" "noone"
		/// @DnDArgument : "var" "modal_option"
		modal_option = noone;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5C50C600
	/// @DnDParent : 4D4ACAD7
	/// @DnDArgument : "const" "2"
	case 2:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1B62B853
		/// @DnDParent : 5C50C600
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsStage2"
		/// @DnDSaveInfo : "sprite" "CropsStage2"
		draw_sprite(CropsStage2, 0, x + 32, y + 32);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3AD11E12
	/// @DnDParent : 4D4ACAD7
	/// @DnDArgument : "const" "3"
	case 3:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 41FB97A3
		/// @DnDParent : 3AD11E12
		/// @DnDArgument : "x" "32"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "32"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsStage3"
		/// @DnDSaveInfo : "sprite" "CropsStage3"
		draw_sprite(CropsStage3, 0, x + 32, y + 32);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4253E32F
	/// @DnDParent : 4D4ACAD7
	/// @DnDArgument : "const" "4"
	case 4:
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A1203D1
		/// @DnDParent : 4253E32F
		/// @DnDArgument : "var" "crop_type"
		/// @DnDArgument : "value" ""wheat""
		if(crop_type == "wheat")
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 4914CF61
			/// @DnDParent : 5A1203D1
			/// @DnDArgument : "x" "32"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "32"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "CropsStage4_Wheat"
			/// @DnDSaveInfo : "sprite" "CropsStage4_Wheat"
			draw_sprite(CropsStage4_Wheat, 0, x + 32, y + 32);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 616476B9
		/// @DnDParent : 4253E32F
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 162E5CEB
			/// @DnDParent : 616476B9
			/// @DnDArgument : "x" "32"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "32"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "sprite" "CropsStage4_Radish"
			/// @DnDSaveInfo : "sprite" "CropsStage4_Radish"
			draw_sprite(CropsStage4_Radish, 0, x + 32, y + 32);
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 2C415269
		/// @DnDParent : 4253E32F
		/// @DnDArgument : "steps" "-1"
		alarm_set(0, -1);
		break;
}