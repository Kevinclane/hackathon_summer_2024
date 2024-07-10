/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3D120726
draw_self();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5FFFB26B
/// @DnDArgument : "expr" "active_crop"
var l5FFFB26B_0 = active_crop;
switch(l5FFFB26B_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 73C8F114
	/// @DnDParent : 5FFFB26B
	/// @DnDArgument : "const" ""corn""
	case "corn":
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3A003846
		/// @DnDParent : 73C8F114
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsStage1"
		/// @DnDSaveInfo : "sprite" "CropsStage1"
		draw_sprite(CropsStage1, 0, x + 0, y + 0);
		break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 54A6CE31
	/// @DnDParent : 5FFFB26B
	default:
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 10673F41
		/// @DnDParent : 54A6CE31
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "CropsBlank"
		/// @DnDSaveInfo : "sprite" "CropsBlank"
		draw_sprite(CropsBlank, 0, x + 0, y + 0);
		break;
}