/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 10EED720
/// @DnDArgument : "var" "interactable_object"
/// @DnDArgument : "not" "1"
if(!(interactable_object == 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6F7B642C
	/// @DnDParent : 10EED720
	/// @DnDArgument : "expr" "interactable_object.is_interactable"
	if(interactable_object.is_interactable)
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 22A892A8
		/// @DnDApplyTo : {Player}
		/// @DnDParent : 6F7B642C
		with(Player) {
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 15DEC025
			/// @DnDParent : 22A892A8
			/// @DnDArgument : "color" "$FF333333"
			draw_set_colour($FF333333 & $ffffff);
			var l15DEC025_0=($FF333333 >> 24);
			draw_set_alpha(l15DEC025_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
			/// @DnDVersion : 1
			/// @DnDHash : 38ED3666
			/// @DnDParent : 22A892A8
			/// @DnDArgument : "x1" "27"
			/// @DnDArgument : "x1_relative" "1"
			/// @DnDArgument : "y1" "-10"
			/// @DnDArgument : "y1_relative" "1"
			/// @DnDArgument : "x2" "41"
			/// @DnDArgument : "x2_relative" "1"
			/// @DnDArgument : "y2" "10"
			/// @DnDArgument : "y2_relative" "1"
			/// @DnDArgument : "fill" "1"
			draw_rectangle(x + 27, y + -10, x + 41, y + 10, 0);
		
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 1C68230C
			/// @DnDParent : 22A892A8
			draw_set_colour($FFFFFFFF & $ffffff);
			var l1C68230C_0=($FFFFFFFF >> 24);
			draw_set_alpha(l1C68230C_0 / $ff);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 234C52E1
			/// @DnDParent : 22A892A8
			/// @DnDArgument : "x" "30"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-10"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "caption" ""F""
			draw_text(x + 30, y + -10, string("F") + "");
		}
	}
}