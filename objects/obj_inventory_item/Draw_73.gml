/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 68195E61
/// @DnDArgument : "x" "camera_get_view_x(view_camera[0]) + x_position"
/// @DnDArgument : "y" "camera_get_view_y(view_camera[0]) + y_position"
x = camera_get_view_x(view_camera[0]) + x_position;
y = camera_get_view_y(view_camera[0]) + y_position;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 63C6BD87
draw_self();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C59EA53
/// @DnDArgument : "var" "item"
/// @DnDArgument : "not" "1"
if(!(item == 0))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4A77AC99
	/// @DnDParent : 5C59EA53
	/// @DnDArgument : "x" "30"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" ".75"
	/// @DnDArgument : "yscale" ".75"
	/// @DnDArgument : "caption" "item.count"
	draw_text_transformed(x + 30, y + 30, string(item.count) + "", .75, .75, 0);
}