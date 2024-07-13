/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 242317CE
/// @DnDArgument : "function" "harvest"
harvest();

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 01B59764
/// @DnDArgument : "msg" ""alarm: harvesting""
show_debug_message(string("alarm: harvesting"));

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6BCBBCA7
/// @DnDArgument : "steps" "3 * 60"
alarm_set(0, 3 * 60);