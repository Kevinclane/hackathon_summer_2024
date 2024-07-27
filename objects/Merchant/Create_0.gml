/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0EA63176
/// @DnDArgument : "funcName" "interact"
function interact() 
{
	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 75BE8731
	/// @DnDParent : 0EA63176
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "object" "obj_merchant_modal"
	/// @DnDSaveInfo : "object" "obj_merchant_modal"
	count = instance_number(obj_merchant_modal);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 24D997D9
	/// @DnDParent : 0EA63176
	/// @DnDArgument : "msg" ""modal count {0}", count"
	show_debug_message(string("modal count {0}", count));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18130E2B
	/// @DnDParent : 0EA63176
	/// @DnDArgument : "var" "count"
	if(count == 0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2D3020B3
		/// @DnDParent : 18130E2B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = true;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 711CFD74
		/// @DnDParent : 18130E2B
		/// @DnDArgument : "objectid" "obj_merchant_modal"
		/// @DnDArgument : "layer" ""Instances_1""
		/// @DnDSaveInfo : "objectid" "obj_merchant_modal"
		instance_create_layer(0, 0, "Instances_1", obj_merchant_modal);
	}
}