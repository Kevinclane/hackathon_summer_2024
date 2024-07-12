/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2AB25B57
/// @DnDArgument : "funcName" "enable_instance"
function enable_instance() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67399BB6
	/// @DnDParent : 2AB25B57
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "instance.is_interactable"
	instance.is_interactable = true;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 62921D65
/// @DnDArgument : "funcName" "disable_instance"
function disable_instance() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F301D98
	/// @DnDParent : 62921D65
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "instance.is_interactable"
	instance.is_interactable = false;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 16ABA544
/// @DnDArgument : "funcName" "set_instance"
/// @DnDArgument : "arg" "obj"
function set_instance(obj) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44A3781E
	/// @DnDParent : 16ABA544
	/// @DnDArgument : "expr" "obj"
	/// @DnDArgument : "var" "instance"
	instance = obj;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F79F5B7
	/// @DnDParent : 16ABA544
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "instance.is_interactable"
	instance.is_interactable = true;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 37268F78
/// @DnDArgument : "funcName" "remove_instance"
function remove_instance() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F99C808
	/// @DnDParent : 37268F78
	/// @DnDArgument : "var" "instance"
	instance = 0;
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7B019019
/// @DnDArgument : "value" "self"
/// @DnDArgument : "var" "global.active_instance_manager"
global.active_instance_manager = self;