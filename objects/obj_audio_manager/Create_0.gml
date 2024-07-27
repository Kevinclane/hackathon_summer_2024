/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2E4B4CB6
/// @DnDArgument : "funcName" "startChoppingSound"
function startChoppingSound() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 08CB2517
	/// @DnDParent : 2E4B4CB6
	/// @DnDArgument : "steps" ".83 * 60"
	alarm_set(0, .83 * 60);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 575130D3
/// @DnDArgument : "funcName" "stopChoppingSound"
function stopChoppingSound() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 259A7AC0
	/// @DnDParent : 575130D3
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);
}