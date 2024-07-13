/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3F7D7F3A
draw_self();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1F3940E1
/// @DnDArgument : "expr" "interactable"
if(interactable)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 663C0849
	/// @DnDParent : 1F3940E1
	/// @DnDArgument : "color" "$FF333333"
	draw_set_colour($FF333333 & $ffffff);
	var l663C0849_0=($FF333333 >> 24);
	draw_set_alpha(l663C0849_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 78F25ACE
	/// @DnDParent : 1F3940E1
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
	/// @DnDHash : 0E4C64CB
	/// @DnDParent : 1F3940E1
	draw_set_colour($FFFFFFFF & $ffffff);
	var l0E4C64CB_0=($FFFFFFFF >> 24);
	draw_set_alpha(l0E4C64CB_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 7D52A7DC
	/// @DnDParent : 1F3940E1
	/// @DnDArgument : "x" "30"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-10"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""F""
	draw_text(x + 30, y + -10, string("F") + "");
}