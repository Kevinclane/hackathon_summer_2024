/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64B63659
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Buy""
if(mode == "Buy")
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 59929805
	/// @DnDParent : 64B63659
	/// @DnDArgument : "var" "pig_pen.count"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "3"
	if(pig_pen.count < 3)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4857D433
		/// @DnDParent : 59929805
		/// @DnDArgument : "var" "Player.resources.gold"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "pig_cost"
		if(Player.resources.gold >= pig_cost)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 5A49FD5A
			/// @DnDParent : 4857D433
			/// @DnDArgument : "function" "pig_pen.addPig"
			pig_pen.addPig();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 681E502C
			/// @DnDParent : 4857D433
			/// @DnDArgument : "expr" "Player.resources.gold - pig_cost"
			/// @DnDArgument : "var" "Player.resources.gold"
			Player.resources.gold = Player.resources.gold - pig_cost;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 22F53F20
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19B20499
	/// @DnDParent : 22F53F20
	/// @DnDArgument : "var" "Player.resources.meat"
	/// @DnDArgument : "op" "2"
	if(Player.resources.meat > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 30020246
		/// @DnDParent : 19B20499
		/// @DnDArgument : "expr" "Player.resources.meat - 1"
		/// @DnDArgument : "var" "Player.resources.meat"
		Player.resources.meat = Player.resources.meat - 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15C8229F
		/// @DnDParent : 19B20499
		/// @DnDArgument : "expr" "Player.resources.gold + 10"
		/// @DnDArgument : "var" "Player.resources.gold"
		Player.resources.gold = Player.resources.gold + 10;
	}
}