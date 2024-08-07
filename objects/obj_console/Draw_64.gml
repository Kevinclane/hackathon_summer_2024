/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0644EDDB
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5CD1BA4F
/// @DnDArgument : "x" "(1280 / 2) - 160"
/// @DnDArgument : "y" "720 - 120"
/// @DnDArgument : "sprite" "Window"
/// @DnDSaveInfo : "sprite" "Window"
draw_sprite(Window, 0, (1280 / 2) - 160, 720 - 120);

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 5019AE53
/// @DnDArgument : "assignee" "count"
/// @DnDArgument : "var" "console"
count = ds_list_size(console);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 676A1C03
/// @DnDArgument : "cond" "i < count"
for(i = 0; i < count; i += 1) {
	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 6DC25E12
	/// @DnDParent : 676A1C03
	/// @DnDArgument : "assignee" "message"
	/// @DnDArgument : "var" "console"
	/// @DnDArgument : "index" "i"
	message = ds_list_find_value(console, i);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 35ED774F
	/// @DnDParent : 676A1C03
	/// @DnDArgument : "x" "490"
	/// @DnDArgument : "y" "698 - (i * 11)"
	/// @DnDArgument : "xscale" ".75"
	/// @DnDArgument : "yscale" ".75"
	/// @DnDArgument : "caption" "message"
	draw_text_transformed(490, 698 - (i * 11), string(message) + "", .75, .75, 0);
}