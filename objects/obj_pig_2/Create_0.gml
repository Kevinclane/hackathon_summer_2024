/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6BA139A0
/// @DnDArgument : "steps" "60*60"
alarm_set(0, 60*60);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 22A1D709
/// @DnDArgument : "funcName" "walkRight"
function walkRight() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1268666D
	/// @DnDParent : 22A1D709
	/// @DnDArgument : "spriteind" "pig_walk_right"
	/// @DnDSaveInfo : "spriteind" "pig_walk_right"
	sprite_index = pig_walk_right;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 140EAB78
	/// @DnDParent : 22A1D709
	/// @DnDArgument : "direction" "0"
	direction = 0;

	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 2F2A1309
	/// @DnDParent : 22A1D709
	/// @DnDArgument : "dir" "0"
	/// @DnDArgument : "speed" "1"
	motion_add(0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1EEDF542
	/// @DnDParent : 22A1D709
	/// @DnDArgument : "steps" "2 * 60"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 2 * 60);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4D77D156
/// @DnDArgument : "funcName" "walkLeft"
function walkLeft() 
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 570A1323
	/// @DnDParent : 4D77D156
	/// @DnDArgument : "spriteind" "pig_walk_left"
	/// @DnDSaveInfo : "spriteind" "pig_walk_left"
	sprite_index = pig_walk_left;
	image_index = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
	/// @DnDVersion : 1.1
	/// @DnDHash : 2B51AA46
	/// @DnDParent : 4D77D156
	/// @DnDArgument : "direction" "180"
	direction = 180;

	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 4DEA633F
	/// @DnDParent : 4D77D156
	/// @DnDArgument : "dir" "180"
	/// @DnDArgument : "speed" "1"
	motion_add(180, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7A77AC0D
	/// @DnDParent : 4D77D156
	/// @DnDArgument : "steps" "2 * 60"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 2 * 60);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 067A46DA
/// @DnDArgument : "funcName" "stopRight"
function stopRight() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 08544D5A
	/// @DnDParent : 067A46DA
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1ED7AC34
	/// @DnDParent : 067A46DA
	/// @DnDArgument : "spriteind" "pig_idle_right"
	/// @DnDSaveInfo : "spriteind" "pig_idle_right"
	sprite_index = pig_idle_right;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5D1406B1
	/// @DnDParent : 067A46DA
	/// @DnDArgument : "steps" "5*60"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 5*60);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5E9083F6
/// @DnDArgument : "funcName" "stopLeft"
function stopLeft() 
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4F3933D3
	/// @DnDParent : 5E9083F6
	speed = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 1EC9C44C
	/// @DnDParent : 5E9083F6
	/// @DnDArgument : "spriteind" "pig_idle_left"
	/// @DnDSaveInfo : "spriteind" "pig_idle_left"
	sprite_index = pig_idle_left;
	image_index = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 4AE2D5F5
	/// @DnDParent : 5E9083F6
	/// @DnDArgument : "steps" "5*60"
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, 5*60);
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 41BB07D3
/// @DnDArgument : "function" "walkRight"
walkRight();