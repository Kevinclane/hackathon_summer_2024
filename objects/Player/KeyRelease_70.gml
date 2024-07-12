/// @DnDAction : YoYo Games.Common.Get_Global
/// @DnDVersion : 1
/// @DnDHash : 0765445D
/// @DnDArgument : "var" "global.active_instance_manager"
temp = global.active_instance_manager;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 49F9C496
/// @DnDArgument : "function" "temp.instance.interact"
temp.instance.interact();