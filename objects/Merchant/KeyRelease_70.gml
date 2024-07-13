/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 49E1D8D2
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 1D126069
	/// @DnDParent : 49E1D8D2
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "object" "obj_merchant_modal"
	/// @DnDSaveInfo : "object" "obj_merchant_modal"
	count = instance_number(obj_merchant_modal);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CA2515B
	/// @DnDParent : 49E1D8D2
	/// @DnDArgument : "var" "count"
	if(count == 0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2C421C01
		/// @DnDParent : 7CA2515B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = true;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1E7C3E13
		/// @DnDParent : 7CA2515B
		/// @DnDArgument : "objectid" "obj_merchant_modal"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_merchant_modal"
		instance_create_layer(0, 0, "Instances_1", obj_merchant_modal);
	}
}