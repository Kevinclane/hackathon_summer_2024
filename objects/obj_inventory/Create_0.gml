/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AE3C668
/// @DnDArgument : "expr" "6"
/// @DnDArgument : "var" "bag_height"
bag_height = 6;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 59E40504
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "bag_width"
bag_width = 4;

/// @DnDAction : YoYo Games.Data Structures.Create_Grid
/// @DnDVersion : 1
/// @DnDHash : 1827DD58
/// @DnDArgument : "var" "inv"
/// @DnDArgument : "width" "bag_width"
/// @DnDArgument : "height" "bag_height"
inv = ds_grid_create(bag_width, bag_height);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B09608B
/// @DnDInput : 2
/// @DnDArgument : "expr" "{item: 0, count: 0, sprite: 0}"
/// @DnDArgument : "var" "empty_slot"
/// @DnDArgument : "var_1" "i"
empty_slot = {item: 0, count: 0, sprite: 0};
i = 0;

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 13AD006B
/// @DnDArgument : "var" "i"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "bag_height"
while ((i < bag_height)) {
	/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 30803F0D
	/// @DnDInput : 4
	/// @DnDParent : 13AD006B
	/// @DnDArgument : "var" "inv"
	/// @DnDArgument : "y" "i"
	/// @DnDArgument : "value" "empty_slot"
	/// @DnDArgument : "x_1" "1"
	/// @DnDArgument : "y_1" "i"
	/// @DnDArgument : "value_1" "empty_slot"
	/// @DnDArgument : "x_2" "2"
	/// @DnDArgument : "y_2" "i"
	/// @DnDArgument : "value_2" "empty_slot"
	/// @DnDArgument : "x_3" "3"
	/// @DnDArgument : "y_3" "i"
	/// @DnDArgument : "value_3" "empty_slot"
	ds_grid_set(inv, 0, i, empty_slot);
	ds_grid_set(inv, 1, i, empty_slot);
	ds_grid_set(inv, 2, i, empty_slot);
	ds_grid_set(inv, 3, i, empty_slot);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55ACDBEF
	/// @DnDParent : 13AD006B
	/// @DnDArgument : "expr" "i + 1"
	/// @DnDArgument : "var" "i"
	i = i + 1;
}

/// @DnDAction : YoYo Games.Data Structures.Grid_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 4AEBA29D
/// @DnDArgument : "var" "inv"
/// @DnDArgument : "x" "2"
/// @DnDArgument : "y" "4"
/// @DnDArgument : "value" "{item: "wood", count: 1, sprite: spr_wood_icon}"
ds_grid_set(inv, 2, 4, {item: "wood", count: 1, sprite: spr_wood_icon});

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71B66373
/// @DnDArgument : "expr" "inv"
/// @DnDArgument : "var" "inventory"
inventory = inv;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 25E35DB1
/// @DnDArgument : "msg" "inv"
show_debug_message(string(inv));