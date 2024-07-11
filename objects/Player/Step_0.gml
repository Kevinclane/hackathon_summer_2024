/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 29F0DAE7
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "obj_interactable_parent"
/// @DnDSaveInfo : "object" "obj_interactable_parent"
var l29F0DAE7_0 = instance_place(x, y, [obj_interactable_parent]);
if ((l29F0DAE7_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 38F7FD71
	/// @DnDParent : 29F0DAE7
	/// @DnDArgument : "expr" "obj_interactable_parent.crop_linked.is_interactable"
	if(obj_interactable_parent.crop_linked.is_interactable)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3691DF53
		/// @DnDParent : 38F7FD71
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "interactable"
		interactable = true;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3D2DBBC7
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B8B6D3D
	/// @DnDParent : 3D2DBBC7
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "interactable"
	interactable = false;
}