/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0F596A51
/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "self"
if(!(obj_interactable_manager.interactable_object == self))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71049BA8
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "expr" "self"
	/// @DnDArgument : "var" "obj_interactable_manager.interactable_object"
	obj_interactable_manager.interactable_object = self;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E098834
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "Player.interactable"
	Player.interactable = true;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 32CDA237
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "var" "axe"
	/// @DnDArgument : "function" "variable_clone"
	/// @DnDArgument : "arg" "obj_items_list.player_tools.axes[0]"
	axe = variable_clone(obj_items_list.player_tools.axes[0]);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0210F36B
	/// @DnDParent : 0F596A51
	/// @DnDArgument : "var" "playerAxe"
	/// @DnDArgument : "function" "obj_inventory.findMatchingItem"
	/// @DnDArgument : "arg" "axe"
	playerAxe = obj_inventory.findMatchingItem(axe);
}