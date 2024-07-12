/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 2C9D0F28
/// @DnDArgument : "var" "c"
/// @DnDArgument : "object" "obj_empty_crop_modal"
/// @DnDSaveInfo : "object" "obj_empty_crop_modal"
c = instance_number(obj_empty_crop_modal);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2078AEF7
/// @DnDArgument : "msg" ""{0}", c"
show_debug_message(string("{0}", c));

/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 0966E5F3
/// @DnDArgument : "var" "global.active_instance"
temp = global.active_instance;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 21EEAAB8
/// @DnDApplyTo : temp
with(temp) {
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 4969910F
	/// @DnDParent : 21EEAAB8
	/// @DnDArgument : "expr" "modal_option"
	var l4969910F_0 = modal_option;
	switch(l4969910F_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 63199652
		/// @DnDParent : 4969910F
		/// @DnDArgument : "const" ""crop_field_empty""
		case "crop_field_empty":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 665C5DF9
			/// @DnDParent : 63199652
			/// @DnDArgument : "expr" ""wheat""
			/// @DnDArgument : "var" "crop_type"
			crop_type = "wheat";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11223F74
			/// @DnDParent : 63199652
			/// @DnDArgument : "expr" ""next_stage""
			/// @DnDArgument : "var" "action_needed"
			action_needed = "next_stage";
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 33AACF3D
			/// @DnDParent : 63199652
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "var" "global.window_is_open"
			global.window_is_open = false;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 2B53E8F8
			/// @DnDParent : 63199652
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "var" "global.game_is_paused"
			global.game_is_paused = false;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 652023F0
			/// @DnDParent : 63199652
			/// @DnDArgument : "value" "noone"
			/// @DnDArgument : "var" "global.active_instance"
			global.active_instance = noone;
			break;
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 37A48CA3
instance_destroy();