/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 68195E61
/// @DnDArgument : "x" "camera_get_view_x(view_camera[0]) + x_position"
/// @DnDArgument : "y" "camera_get_view_y(view_camera[0]) + y_position"
x = camera_get_view_x(view_camera[0]) + x_position;
y = camera_get_view_y(view_camera[0]) + y_position;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3EAA2F47
/// @DnDArgument : "var" "active"
/// @DnDArgument : "value" "true"
if(active == true)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 3FF22E5C
	/// @DnDParent : 3EAA2F47
	/// @DnDArgument : "color" "$FF00FF2E"
	draw_set_colour($FF00FF2E & $ffffff);
	var l3FF22E5C_0=($FF00FF2E >> 24);
	draw_set_alpha(l3FF22E5C_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 6AE4FD1E
	/// @DnDParent : 3EAA2F47
	/// @DnDArgument : "x1" "-2"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-2"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "obj_inventory.box_size + 2"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "obj_inventory.box_size + 2"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(x + -2, y + -2, x + obj_inventory.box_size + 2, y + obj_inventory.box_size + 2, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 52201B74
	/// @DnDParent : 3EAA2F47
	/// @DnDArgument : "color" "global.default_draw_color"
	draw_set_colour(global.default_draw_color & $ffffff);
	var l52201B74_0=(global.default_draw_color >> 24);
	draw_set_alpha(l52201B74_0 / $ff);
}

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