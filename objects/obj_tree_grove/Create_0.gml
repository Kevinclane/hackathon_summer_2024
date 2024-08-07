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
	/// @DnDArgument : "value" "playerAxe.level"
	return playerAxe.level;
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

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5C809E45
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "var" "item"
	/// @DnDArgument : "function" "variable_clone"
	/// @DnDArgument : "arg" "obj_items_list.resources.wood"
	item = variable_clone(obj_items_list.resources.wood);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 198412CF
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "expr" "harvest_value"
	/// @DnDArgument : "var" "item.count"
	item.count = harvest_value;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 4BBD5C05
	/// @DnDParent : 70CE11E0
	/// @DnDArgument : "function" "obj_inventory.addItem"
	/// @DnDArgument : "arg" "item"
	obj_inventory.addItem(item);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6908A99D
/// @DnDArgument : "funcName" "endInteract"
function endInteract() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 06302746
	/// @DnDParent : 6908A99D
	/// @DnDArgument : "steps" "-1"
	alarm_set(0, -1);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1B996F30
	/// @DnDApplyTo : {Player}
	/// @DnDParent : 6908A99D
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
	/// @DnDParent : 6908A99D
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2A4CD443
	/// @DnDParent : 6908A99D
	/// @DnDArgument : "function" "Player.stopChopping"
	Player.stopChopping();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 74464B93
	/// @DnDDisabled : 1
	/// @DnDParent : 6908A99D
	/// @DnDArgument : "function" "obj_audio_manager.stopChoppingSound"
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4C267706
/// @DnDArgument : "funcName" "interact"
function interact() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C2DE0DD
	/// @DnDParent : 4C267706
	/// @DnDArgument : "var" "playerAxe"
	/// @DnDArgument : "not" "1"
	if(!(playerAxe == 0))
	{
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 1FD2285A
		/// @DnDParent : 5C2DE0DD
		/// @DnDArgument : "steps" "3 * 60"
		alarm_set(0, 3 * 60);
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2A23BDB2
		/// @DnDParent : 5C2DE0DD
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "global.game_is_paused"
		global.game_is_paused = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 333308F0
		/// @DnDApplyTo : {Player}
		/// @DnDParent : 5C2DE0DD
		/// @DnDArgument : "spriteind" "Swing_Up"
		/// @DnDSaveInfo : "spriteind" "Swing_Up"
		with(Player) {
		sprite_index = Swing_Up;
		image_index = 0;
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0A897E83
		/// @DnDParent : 5C2DE0DD
		/// @DnDArgument : "function" "Player.startChopping"
		Player.startChopping();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 15958610
		/// @DnDParent : 5C2DE0DD
		/// @DnDArgument : "function" "obj_audio_manager.startChoppingSound"
		obj_audio_manager.startChoppingSound();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 55B7C235
	/// @DnDParent : 4C267706
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3A2B50B3
		/// @DnDParent : 55B7C235
		/// @DnDArgument : "function" "obj_console.addMessage"
		/// @DnDArgument : "arg" ""You need an axe to do that.""
		obj_console.addMessage("You need an axe to do that.");
	}
}