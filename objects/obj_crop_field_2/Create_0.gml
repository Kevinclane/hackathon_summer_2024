/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 19001917
/// @DnDArgument : "funcName" "calculate_harvest_value"
function calculate_harvest_value() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 7AA36D00
	/// @DnDParent : 19001917
	/// @DnDArgument : "value" "base_harvest_value + (5 * Player.upgrades.plow)"
	return base_harvest_value + (5 * Player.upgrades.plow);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 783D459F
/// @DnDArgument : "funcName" "reset_instance"
function reset_instance() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 189DA4FA
	/// @DnDParent : 783D459F
	/// @DnDArgument : "spriteind" "CropsBlank"
	/// @DnDSaveInfo : "spriteind" "CropsBlank"
	sprite_index = CropsBlank;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E7EC9EF
	/// @DnDParent : 783D459F
	/// @DnDArgument : "var" "crop_type"
	crop_type = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6899F81B
	/// @DnDParent : 783D459F
	/// @DnDArgument : "var" "crop_stage"
	crop_stage = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FAB7CC1
	/// @DnDParent : 783D459F
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "action_needed"
	action_needed = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A3C04E3
	/// @DnDParent : 783D459F
	/// @DnDArgument : "expr" ""crop_field_empty""
	/// @DnDArgument : "var" "modal_option"
	modal_option = "crop_field_empty";

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3EAB6303
	/// @DnDParent : 783D459F
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 398258DE
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7696E344
	/// @DnDParent : 398258DE
	/// @DnDArgument : "var" "harvest_value"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "calculate_harvest_value"
	var harvest_value = calculate_harvest_value();

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 16190892
	/// @DnDParent : 398258DE
	/// @DnDArgument : "expr" "crop_type"
	var l16190892_0 = crop_type;
	switch(l16190892_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 09735102
		/// @DnDParent : 16190892
		/// @DnDArgument : "const" ""wheat""
		case "wheat":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2022FA04
			/// @DnDParent : 09735102
			/// @DnDArgument : "expr" "Player.resources.wheat + harvest_value"
			/// @DnDArgument : "var" "Player.resources.wheat"
			Player.resources.wheat = Player.resources.wheat + harvest_value;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 05A5452A
		/// @DnDParent : 16190892
		/// @DnDArgument : "const" ""radish""
		case "radish":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3965DA90
			/// @DnDParent : 05A5452A
			/// @DnDArgument : "expr" "Player.resources.radish + harvest_value"
			/// @DnDArgument : "var" "Player.resources.radish"
			Player.resources.radish = Player.resources.radish + harvest_value;
			break;
	}
}