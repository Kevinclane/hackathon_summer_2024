/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35D6D35D
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FC716FF
	/// @DnDParent : 35D6D35D
	/// @DnDArgument : "var" "modal_option"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(modal_option == noone))
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4C942CB0
		/// @DnDParent : 3FC716FF
		/// @DnDArgument : "var" "modal"
		/// @DnDArgument : "objectid" "obj_crop_2_modal"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_crop_2_modal"
		modal = instance_create_layer(0, 0, "Instances_1", obj_crop_2_modal);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7CE88953
		/// @DnDParent : 3FC716FF
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = true;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 09D54667
	/// @DnDParent : 35D6D35D
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 4903C6E7
		/// @DnDParent : 09D54667
		/// @DnDArgument : "function" "harvest"
		harvest();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 523DEB7C
		/// @DnDParent : 09D54667
		/// @DnDArgument : "function" "reset_instance"
		reset_instance();
	}
}