/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 194CCAF4
/// @DnDArgument : "soundid" "Sound2"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Sound2"
audio_play_sound(Sound2, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2E4B4CB6
/// @DnDArgument : "funcName" "StartChoppingSound"
function StartChoppingSound() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 08CB2517
	/// @DnDParent : 2E4B4CB6
	/// @DnDArgument : "steps" ".83 * 60"
	alarm_set(0, .83 * 60);
}