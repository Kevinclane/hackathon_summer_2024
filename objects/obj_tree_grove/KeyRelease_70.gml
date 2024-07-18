/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2C83C179
/// @DnDArgument : "expr" "is_interactable"
if(is_interactable)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5F94108F
	/// @DnDParent : 2C83C179
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0AE0B9BF
	/// @DnDApplyTo : {Player}
	/// @DnDParent : 2C83C179
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "Idle_Up"
	/// @DnDSaveInfo : "spriteind" "Idle_Up"
	with(Player) {
	sprite_index = Idle_Up;
	image_index += 0;
	}

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2755FFC5
	/// @DnDParent : 2C83C179
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 136AB318
	/// @DnDParent : 2C83C179
	/// @DnDArgument : "function" "Player.stopChopping"
	Player.stopChopping();
}