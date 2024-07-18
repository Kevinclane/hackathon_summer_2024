/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1C01BD3F
/// @DnDArgument : "object" "obj_interactable_parent"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_interactable_parent"
var l1C01BD3F_0 = instance_place(0, 0, [obj_interactable_parent]);
if (!(l1C01BD3F_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 09973728
	/// @DnDParent : 1C01BD3F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "interactable"
	interactable = false;
}