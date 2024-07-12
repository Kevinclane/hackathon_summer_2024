/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5018F5A6
/// @DnDApplyTo : instance
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "Player"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "Player"
with(instance) {
var l5018F5A6_0 = instance_place(x + 0, y + 0, [Player]);
}
if (!(l5018F5A6_0 > 0))
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 1A5B045F
	/// @DnDParent : 5018F5A6
	/// @DnDArgument : "msg" ""no connection""
	show_debug_message(string("no connection"));
}