/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 78FBC374
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 40BE9352
	/// @DnDParent : 78FBC374
	/// @DnDArgument : "steps" "3 * 60"
	alarm_set(0, 3 * 60);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3CD37E41
	/// @DnDParent : 78FBC374
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = true;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 68AED3B8
	/// @DnDApplyTo : {Player}
	/// @DnDParent : 78FBC374
	/// @DnDArgument : "spriteind" "Swing_Up"
	/// @DnDSaveInfo : "spriteind" "Swing_Up"
	with(Player) {
	sprite_index = Swing_Up;
	image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7F865334
	/// @DnDParent : 78FBC374
	/// @DnDArgument : "function" "Player.startChopping"
	Player.startChopping();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4CFC8937
	/// @DnDParent : 78FBC374
	/// @DnDArgument : "function" "obj_audio_manager.startChoppingSound"
	obj_audio_manager.startChoppingSound();
}