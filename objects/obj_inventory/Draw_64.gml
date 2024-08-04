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
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1726904A
		/// @DnDParent : 0D4EC53B
		/// @DnDArgument : "x" "x_offset + 30"
		/// @DnDArgument : "y" "y_offset + 30"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" "x_1.count"
		draw_text_transformed(x_offset + 30, y_offset + 30, string(x_1.count) + "", .75, .75, 0);
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
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2A0819EC
		/// @DnDParent : 3B1AB9F6
		/// @DnDArgument : "x" "x_offset + box_size + slot_buffer + 30"
		/// @DnDArgument : "y" "y_offset + 30"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" "x_2.count"
		draw_text_transformed(x_offset + box_size + slot_buffer + 30, y_offset + 30, string(x_2.count) + "", .75, .75, 0);
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
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 22146F3A
		/// @DnDParent : 5390D6BD
		/// @DnDArgument : "x" "x_offset + (2 * box_size) + (2 * slot_buffer) + 30"
		/// @DnDArgument : "y" "y_offset + 30"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" "x_3.count"
		draw_text_transformed(x_offset + (2 * box_size) + (2 * slot_buffer) + 30, y_offset + 30, string(x_3.count) + "", .75, .75, 0);
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
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 02C68CC5
		/// @DnDParent : 3F1ED562
		/// @DnDArgument : "x" "x_offset + (3 * box_size) + (3 * slot_buffer) + 30"
		/// @DnDArgument : "y" "y_offset + 30"
		/// @DnDArgument : "xscale" ".75"
		/// @DnDArgument : "yscale" ".75"
		/// @DnDArgument : "caption" "x_4.count"
		draw_text_transformed(x_offset + (3 * box_size) + (3 * slot_buffer) + 30, y_offset + 30, string(x_4.count) + "", .75, .75, 0);
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