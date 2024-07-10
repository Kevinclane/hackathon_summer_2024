/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 7FF60954
/// @DnDArgument : "x" "xprevious"
/// @DnDArgument : "y" "y"
/// @DnDArgument : "object" "obj_collision_parent"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "obj_collision_parent"
var l7FF60954_0 = instance_place(xprevious, y, [obj_collision_parent]);
if (!(l7FF60954_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 52327440
	/// @DnDParent : 7FF60954
	/// @DnDArgument : "x" "xprevious"
	/// @DnDArgument : "y" "y"
	x = xprevious;
	y = y;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B63217A
else
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 203F2840
	/// @DnDParent : 5B63217A
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "yprevious"
	/// @DnDArgument : "object" "obj_collision_parent"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "obj_collision_parent"
	var l203F2840_0 = instance_place(x, yprevious, [obj_collision_parent]);
	if (!(l203F2840_0 > 0))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 6630E8FA
		/// @DnDParent : 203F2840
		/// @DnDArgument : "x" "x"
		/// @DnDArgument : "y" "yprevious"
		x = x;
		y = yprevious;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 50BA3DD3
	/// @DnDParent : 5B63217A
	else
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 42F0A8B7
		/// @DnDParent : 50BA3DD3
		/// @DnDArgument : "x" "xprevious"
		/// @DnDArgument : "y" "yprevious"
		x = xprevious;
		y = yprevious;
	}
}