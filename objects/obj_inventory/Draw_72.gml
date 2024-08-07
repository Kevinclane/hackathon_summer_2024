/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 07DBD396
/// @DnDArgument : "x" "camera_get_view_x(view_camera[0]) + x_offset - slot_buffer"
/// @DnDArgument : "y" "camera_get_view_y(view_camera[0]) + y_offset - slot_buffer - 3"
x = camera_get_view_x(view_camera[0]) + x_offset - slot_buffer;
y = camera_get_view_y(view_camera[0]) + y_offset - slot_buffer - 3;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4221AFD3
draw_self();