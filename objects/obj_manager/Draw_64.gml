/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7CBD9134
/// @DnDArgument : "expr" "global.window_is_open"
if(global.window_is_open)
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 635EF1BF
	/// @DnDParent : 7CBD9134
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "object" "obj_empty_crop_modal"
	/// @DnDSaveInfo : "object" "obj_empty_crop_modal"
	count = instance_number(obj_empty_crop_modal);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 356E445B
	/// @DnDParent : 7CBD9134
	/// @DnDArgument : "var" "count"
	if(count == 0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 29549693
		/// @DnDParent : 356E445B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = true;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FC3C530
		/// @DnDParent : 356E445B
		/// @DnDArgument : "var" "global.active_instance.modal_option"
		/// @DnDArgument : "value" ""crop_field_empty""
		if(global.active_instance.modal_option == "crop_field_empty")
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4CA12C6A
			/// @DnDParent : 7FC3C530
			/// @DnDArgument : "objectid" "obj_empty_crop_modal"
			/// @DnDArgument : "layer" ""Instances_1""
			/// @DnDSaveInfo : "objectid" "obj_empty_crop_modal"
			instance_create_layer(0, 0, "Instances_1", obj_empty_crop_modal);
		}
	}
}