/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2871E516
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "interactable"
interactable = false;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 39F2AA95
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "Idle_Down"
/// @DnDSaveInfo : "spriteind" "Idle_Down"
sprite_index = Idle_Down;
image_index += 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 61352997
/// @DnDArgument : "funcName" "startChopping"
function startChopping() 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 77FF2EA9
	/// @DnDParent : 61352997
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "overlay"
	/// @DnDArgument : "objectid" "obj_player_overlay_1"
	/// @DnDArgument : "layer" ""Instances_1""
	/// @DnDSaveInfo : "objectid" "obj_player_overlay_1"
	overlay = instance_create_layer(x + 0, y + 0, "Instances_1", obj_player_overlay_1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E02FD40
	/// @DnDParent : 61352997
	/// @DnDArgument : "expr" "overlay"
	/// @DnDArgument : "var" "overlay1"
	overlay1 = overlay;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 764B390D
/// @DnDArgument : "funcName" "stopChopping"
function stopChopping() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4D486427
	/// @DnDParent : 764B390D
	/// @DnDArgument : "obj" "obj_player_overlay_1"
	/// @DnDSaveInfo : "obj" "obj_player_overlay_1"
	var l4D486427_0 = false;
	l4D486427_0 = instance_exists(obj_player_overlay_1);
	if(l4D486427_0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 29711FA8
		/// @DnDApplyTo : self.overlay1
		/// @DnDParent : 4D486427
		with(self.overlay1) instance_destroy();
	}
}