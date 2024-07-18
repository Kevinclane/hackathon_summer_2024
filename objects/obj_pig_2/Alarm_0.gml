/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A40BE6E
/// @DnDArgument : "var" "Player.resources.radish"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "eating_cost"
if(Player.resources.radish >= eating_cost)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B86C975
	/// @DnDParent : 6A40BE6E
	/// @DnDArgument : "expr" "Player.resources.radish - eating_cost"
	/// @DnDArgument : "var" "Player.resources.radish"
	Player.resources.radish = Player.resources.radish - eating_cost;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 239CF7C0
	/// @DnDParent : 6A40BE6E
	/// @DnDArgument : "expr" "Player.resources.meat + 1"
	/// @DnDArgument : "var" "Player.resources.meat"
	Player.resources.meat = Player.resources.meat + 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1055F390
	/// @DnDParent : 6A40BE6E
	/// @DnDArgument : "steps" "60*60"
	alarm_set(0, 60*60);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 73A8AEBB
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7247BD27
	/// @DnDParent : 73A8AEBB
	/// @DnDArgument : "expr" "pig_pen.count - 1"
	/// @DnDArgument : "var" "pig_pen.count"
	pig_pen.count = pig_pen.count - 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0106BEA6
	/// @DnDParent : 73A8AEBB
	instance_destroy();
}