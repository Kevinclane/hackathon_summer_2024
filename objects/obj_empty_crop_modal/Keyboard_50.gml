/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 20911A04
/// @DnDArgument : "var" "global.active_instance"
temp = global.active_instance;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 09AC3BFB
/// @DnDApplyTo : temp
with(temp) {
	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 2116DF48
	/// @DnDParent : 09AC3BFB
	/// @DnDArgument : "expr" "modal_option"
	var l2116DF48_0 = modal_option;
	switch(l2116DF48_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 71493DAC
		/// @DnDParent : 2116DF48
		/// @DnDArgument : "const" ""crop_field_empty""
		case "crop_field_empty":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68534F16
			/// @DnDParent : 71493DAC
			/// @DnDArgument : "expr" ""radish""
			/// @DnDArgument : "var" "crop_type"
			crop_type = "radish";
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3C4F8912
			/// @DnDParent : 71493DAC
			/// @DnDArgument : "expr" ""next_stage""
			/// @DnDArgument : "var" "action_needed"
			action_needed = "next_stage";
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 27389950
			/// @DnDParent : 71493DAC
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "var" "global.window_is_open"
			global.window_is_open = false;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 2B282C27
			/// @DnDParent : 71493DAC
			/// @DnDArgument : "value" "false"
			/// @DnDArgument : "var" "global.game_is_paused"
			global.game_is_paused = false;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 2CF842A6
			/// @DnDParent : 71493DAC
			/// @DnDArgument : "value" "noone"
			/// @DnDArgument : "var" "global.active_instance"
			global.active_instance = noone;
			break;
	}
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 58702FBA
instance_destroy();