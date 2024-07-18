/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 69F355D8
/// @DnDArgument : "funcName" "calculate_harvest_value"
function calculate_harvest_value() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 72373D96
	/// @DnDParent : 69F355D8
	/// @DnDArgument : "value" "base_harvest_value + (5 * Player.upgrades.plow)"
	return base_harvest_value + (5 * Player.upgrades.plow);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 059159A8
/// @DnDArgument : "funcName" "reset_instance"
function reset_instance() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D0A9F45
	/// @DnDParent : 059159A8
	/// @DnDArgument : "var" "crop_type"
	crop_type = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5326FFDB
	/// @DnDParent : 059159A8
	/// @DnDArgument : "var" "crop_stage"
	crop_stage = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4EC089A4
	/// @DnDParent : 059159A8
	/// @DnDArgument : "expr" "noone"
	/// @DnDArgument : "var" "action_needed"
	action_needed = noone;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B365A60
	/// @DnDParent : 059159A8
	/// @DnDArgument : "expr" ""crop_field_empty""
	/// @DnDArgument : "var" "modal_option"
	modal_option = "crop_field_empty";

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2D9B82CB
	/// @DnDParent : 059159A8
	/// @DnDArgument : "value" "false"
	/// @DnDArgument : "var" "global.game_is_paused"
	global.game_is_paused = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 11B3F9AD
/// @DnDArgument : "funcName" "harvest"
function harvest() 
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 16D3890D
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "var" "harvest_value"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "calculate_harvest_value"
	var harvest_value = calculate_harvest_value();

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6AEFFA24
	/// @DnDParent : 11B3F9AD
	/// @DnDArgument : "expr" "crop_type"
	var l6AEFFA24_0 = crop_type;
	switch(l6AEFFA24_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2AE216C6
		/// @DnDParent : 6AEFFA24
		/// @DnDArgument : "const" ""wheat""
		case "wheat":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 74091757
			/// @DnDParent : 2AE216C6
			/// @DnDArgument : "expr" "Player.resources.wheat + harvest_value"
			/// @DnDArgument : "var" "Player.resources.wheat"
			Player.resources.wheat = Player.resources.wheat + harvest_value;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3123B550
		/// @DnDParent : 6AEFFA24
		/// @DnDArgument : "const" ""radish""
		case "radish":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79456CA4
			/// @DnDParent : 3123B550
			/// @DnDArgument : "expr" "Player.resources.radish + harvest_value"
			/// @DnDArgument : "var" "Player.resources.radish"
			Player.resources.radish = Player.resources.radish + harvest_value;
			break;
	}
}