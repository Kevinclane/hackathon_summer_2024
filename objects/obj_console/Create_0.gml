/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 728EFAF8
/// @DnDArgument : "var" "console"
console = ds_list_create();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 714086CD
/// @DnDArgument : "funcName" "addMessage"
/// @DnDArgument : "arg" "message"
function addMessage(message) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 67C8DC06
	/// @DnDParent : 714086CD
	/// @DnDArgument : "var" "console"
	/// @DnDArgument : "value" "message"
	ds_list_add(console, message);

	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 7B60E6B6
	/// @DnDParent : 714086CD
	/// @DnDArgument : "assignee" "count"
	/// @DnDArgument : "var" "console"
	count = ds_list_size(console);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0737B8D1
	/// @DnDParent : 714086CD
	/// @DnDArgument : "var" "count"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "9"
	if(count > 9)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Remove
		/// @DnDVersion : 1
		/// @DnDHash : 50B7795C
		/// @DnDParent : 0737B8D1
		/// @DnDArgument : "var" "console"
		/// @DnDArgument : "index" "9"
		if(ds_list_size(console) > 9)
			ds_list_delete(console, 9);
	}
}