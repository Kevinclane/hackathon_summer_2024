/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 39BE5989
/// @DnDArgument : "funcName" "startCrops"
/// @DnDArgument : "arg" "crop"
function startCrops(crop) 
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 72EF17D5
	/// @DnDApplyTo : linked_crop
	/// @DnDParent : 39BE5989
	with(linked_crop) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B921474
		/// @DnDParent : 72EF17D5
		/// @DnDArgument : "expr" "crop"
		/// @DnDArgument : "var" "crop_type"
		crop_type = crop;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 63D5DC33
		/// @DnDParent : 72EF17D5
		/// @DnDArgument : "expr" ""next_stage""
		/// @DnDArgument : "var" "action_needed"
		action_needed = "next_stage";
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1E6A867D
		/// @DnDParent : 72EF17D5
		/// @DnDArgument : "function" "obj_interactable_manager.closeModal"
		obj_interactable_manager.closeModal();
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7749BE35
	/// @DnDParent : 39BE5989
	instance_destroy();
}