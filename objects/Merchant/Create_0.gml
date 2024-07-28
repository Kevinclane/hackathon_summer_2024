/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0EA63176
/// @DnDArgument : "funcName" "interact"
function interact() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4316E716
	/// @DnDParent : 0EA63176
	/// @DnDArgument : "var" "obj_interactable_manager.active_modal"
	if(obj_interactable_manager.active_modal == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 711CFD74
		/// @DnDParent : 4316E716
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "modal"
		/// @DnDArgument : "objectid" "obj_merchant_modal"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_merchant_modal"
		modal = instance_create_layer(x + 0, y + 0, "Instances_1", obj_merchant_modal);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AD3A19D
		/// @DnDParent : 4316E716
		/// @DnDArgument : "expr" "modal"
		/// @DnDArgument : "var" "obj_interactable_manager.active_modal"
		obj_interactable_manager.active_modal = modal;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7C88214B
/// @DnDArgument : "funcName" "endInteract"
function endInteract() 
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 462F1A5C
	/// @DnDParent : 7C88214B
	/// @DnDArgument : "msg" ""empty""
	show_debug_message(string("empty"));
}