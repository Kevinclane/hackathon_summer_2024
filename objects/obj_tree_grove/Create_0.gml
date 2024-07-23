/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 328158C5
/// @DnDArgument : "funcName" "calculate_harvest_value"
function calculate_harvest_value() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 0D39EFDF
	/// @DnDParent : 328158C5
	/// @DnDArgument : "value" "base_harvest_value + Player.upgrades.axe"
	return base_harvest_value + Player.upgrades.axe;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 70CE11E0
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1FC50F74
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "var" "harvest_value"
	/// @DnDArgument : "function" "calculate_harvest_value"
	harvest_value = calculate_harvest_value();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 198412CF
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "expr" "Player.resources.wood + harvest_value"
	/// @DnDArgument : "var" "Player.resources.wood"
	Player.resources.wood = Player.resources.wood + harvest_value;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6908A99D
/// @DnDArgument : "funcName" "endChopping"
function endChopping() 
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1341543A
	/// @DnDParent : 6908A99D
	/// @DnDArgument : "expr" "is_interactable"
	if(is_interactable)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 06302746
		/// @DnDParent : 1341543A
		/// @DnDArgument : "steps" "-1"
		alarm_set(0, -1);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1B996F30
		/// @DnDApplyTo : {Player}
		/// @DnDParent : 1341543A
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Idle_Up"
		/// @DnDSaveInfo : "spriteind" "Idle_Up"
		with(Player) {
		sprite_index = Idle_Up;
		image_index += 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0CC06FDD
		/// @DnDParent : 1341543A
		/// @DnDArgument : "value" "false"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = false;
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2A4CD443
		/// @DnDParent : 1341543A
		/// @DnDArgument : "function" "Player.stopChopping"
		Player.stopChopping();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 74464B93
		/// @DnDParent : 1341543A
		/// @DnDArgument : "function" "obj_audio_manager.stopChoppingSound"
		obj_audio_manager.stopChoppingSound();
	}
}