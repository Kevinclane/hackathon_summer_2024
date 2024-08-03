/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3588A915
/// @DnDArgument : "expr" "40"
/// @DnDArgument : "var" "box_size"
box_size = 40;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B737264
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "slot_buffer"
slot_buffer = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 094548E2
/// @DnDArgument : "var" "i"
i = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D533285
/// @DnDArgument : "expr" "720 - (bag_height * (box_size + slot_buffer) + toolbar_height)"
/// @DnDArgument : "var" "y_offset"
y_offset = 720 - (bag_height * (box_size + slot_buffer) + toolbar_height);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E93591F
/// @DnDArgument : "expr" "1280 - bag_width * (box_size + slot_buffer) - 20"
/// @DnDArgument : "var" "x_offset"
x_offset = 1280 - bag_width * (box_size + slot_buffer) - 20;

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7750A4AC
/// @DnDArgument : "x" "x_offset - slot_buffer"
/// @DnDArgument : "y" "y_offset - slot_buffer - 3"
/// @DnDArgument : "sprite" "Toolbox_Background"
/// @DnDSaveInfo : "sprite" "Toolbox_Background"
draw_sprite(Toolbox_Background, 0, x_offset - slot_buffer, y_offset - slot_buffer - 3);

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 1E1724B2
/// @DnDArgument : "var" "i"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "bag_height"
while ((i < bag_height)) {
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 28EF5D1A
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "color" "$FF000000"
	draw_set_colour($FF000000 & $ffffff);
	var l28EF5D1A_0=($FF000000 >> 24);
	draw_set_alpha(l28EF5D1A_0 / $ff);

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 58582DC3
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "assignee" "x_1"
	/// @DnDArgument : "var" "inventory"
	/// @DnDArgument : "y" "i"
	x_1 = ds_grid_get(inventory, 0, i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D4EC53B
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "var" "x_1.item"
	/// @DnDArgument : "not" "1"
	if(!(x_1.item == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6EB29F67
		/// @DnDParent : 0D4EC53B
		/// @DnDArgument : "x" "x_offset"
		/// @DnDArgument : "y" "y_offset"
		/// @DnDArgument : "sprite" "x_1.sprite"
		draw_sprite(x_1.sprite, 0, x_offset, y_offset);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 43FB199D
	/// @DnDParent : 1E1724B2
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 56FFDC15
		/// @DnDParent : 43FB199D
		/// @DnDArgument : "x1" "x_offset"
		/// @DnDArgument : "y1" "y_offset"
		/// @DnDArgument : "x2" "x_offset + box_size"
		/// @DnDArgument : "y2" "y_offset + box_size"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(x_offset, y_offset, x_offset + box_size, y_offset + box_size, 0);
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 76BD45B5
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "assignee" "x_2"
	/// @DnDArgument : "var" "inventory"
	/// @DnDArgument : "x" "1"
	/// @DnDArgument : "y" "i"
	x_2 = ds_grid_get(inventory, 1, i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B1AB9F6
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "var" "x_2.item"
	/// @DnDArgument : "not" "1"
	if(!(x_2.item == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7378A8A4
		/// @DnDParent : 3B1AB9F6
		/// @DnDArgument : "x" "x_offset + box_size + slot_buffer"
		/// @DnDArgument : "y" "y_offset"
		/// @DnDArgument : "sprite" "x_2.sprite"
		draw_sprite(x_2.sprite, 0, x_offset + box_size + slot_buffer, y_offset);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0A7BB4B4
	/// @DnDParent : 1E1724B2
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 3002080D
		/// @DnDParent : 0A7BB4B4
		/// @DnDArgument : "x1" "x_offset + box_size + slot_buffer"
		/// @DnDArgument : "y1" "y_offset"
		/// @DnDArgument : "x2" "x_offset + (2 * box_size) + slot_buffer"
		/// @DnDArgument : "y2" "y_offset + box_size"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(x_offset + box_size + slot_buffer, y_offset, x_offset + (2 * box_size) + slot_buffer, y_offset + box_size, 0);
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 561F1805
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "assignee" "x_3"
	/// @DnDArgument : "var" "inventory"
	/// @DnDArgument : "x" "2"
	/// @DnDArgument : "y" "i"
	x_3 = ds_grid_get(inventory, 2, i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5390D6BD
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "var" "x_3.item"
	/// @DnDArgument : "not" "1"
	if(!(x_3.item == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C056667
		/// @DnDParent : 5390D6BD
		/// @DnDArgument : "x" "x_offset + (2 * box_size) + (2 * slot_buffer)"
		/// @DnDArgument : "y" "y_offset"
		/// @DnDArgument : "sprite" "x_3.sprite"
		draw_sprite(x_3.sprite, 0, x_offset + (2 * box_size) + (2 * slot_buffer), y_offset);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 412B3406
	/// @DnDParent : 1E1724B2
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 0ACFA390
		/// @DnDParent : 412B3406
		/// @DnDArgument : "x1" "x_offset + (2 * box_size) + (2 * slot_buffer)"
		/// @DnDArgument : "y1" "y_offset"
		/// @DnDArgument : "x2" "x_offset + (3 * box_size) + (2 * slot_buffer)"
		/// @DnDArgument : "y2" "y_offset + box_size"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(x_offset + (2 * box_size) + (2 * slot_buffer), y_offset, x_offset + (3 * box_size) + (2 * slot_buffer), y_offset + box_size, 0);
	}

	/// @DnDAction : YoYo Games.Data Structures.Grid_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 02C84FC1
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "assignee" "x_4"
	/// @DnDArgument : "var" "inventory"
	/// @DnDArgument : "x" "3"
	/// @DnDArgument : "y" "i"
	x_4 = ds_grid_get(inventory, 3, i);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3F1ED562
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "var" "x_4.item"
	/// @DnDArgument : "not" "1"
	if(!(x_4.item == 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 656F223C
		/// @DnDParent : 3F1ED562
		/// @DnDArgument : "x" "x_offset + (3 * box_size) + (3 * slot_buffer)"
		/// @DnDArgument : "y" "y_offset"
		/// @DnDArgument : "sprite" "x_4.sprite"
		draw_sprite(x_4.sprite, 0, x_offset + (3 * box_size) + (3 * slot_buffer), y_offset);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 72385A6B
	/// @DnDParent : 1E1724B2
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
		/// @DnDVersion : 1
		/// @DnDHash : 34021BF2
		/// @DnDParent : 72385A6B
		/// @DnDArgument : "x1" "x_offset + (3 * box_size) + (3 * slot_buffer)"
		/// @DnDArgument : "y1" "y_offset"
		/// @DnDArgument : "x2" "x_offset + (4 * box_size) + (3 * slot_buffer)"
		/// @DnDArgument : "y2" "y_offset + box_size"
		/// @DnDArgument : "fill" "1"
		draw_rectangle(x_offset + (3 * box_size) + (3 * slot_buffer), y_offset, x_offset + (4 * box_size) + (3 * slot_buffer), y_offset + box_size, 0);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37BA649C
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "expr" "i + 1"
	/// @DnDArgument : "var" "i"
	i = i + 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7210FFA7
	/// @DnDParent : 1E1724B2
	/// @DnDArgument : "expr" "y_offset + slot_buffer + box_size"
	/// @DnDArgument : "var" "y_offset"
	y_offset = y_offset + slot_buffer + box_size;
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 46F6833F
draw_set_colour($FFFFFFFF & $ffffff);
var l46F6833F_0=($FFFFFFFF >> 24);
draw_set_alpha(l46F6833F_0 / $ff);