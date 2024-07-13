/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 18AB2AC2
/// @DnDArgument : "x" "480"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "sprite" "Window2"
/// @DnDSaveInfo : "sprite" "Window2"
draw_sprite(Window2, 0, 480, 50);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0894C2D4
/// @DnDArgument : "function" "drawToggleButton"
drawToggleButton();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A580A67
/// @DnDArgument : "var" "mode"
/// @DnDArgument : "value" ""Sell""
if(mode == "Sell")
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1D12B8DB
	/// @DnDParent : 1A580A67
	/// @DnDArgument : "function" "drawSellButtonOne"
	drawSellButtonOne();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 040F1647
	/// @DnDParent : 1A580A67
	/// @DnDArgument : "function" "drawSellButtonTwo"
	drawSellButtonTwo();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0EB358EA
	/// @DnDParent : 1A580A67
	/// @DnDArgument : "function" "drawSellButtonThree"
	drawSellButtonThree();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 48D46AB1
else
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 19C46E39
	/// @DnDParent : 48D46AB1
	/// @DnDArgument : "function" "drawBuyButtonOne"
	drawBuyButtonOne();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 7DA8AA81
	/// @DnDParent : 48D46AB1
	/// @DnDArgument : "function" "drawBuyButtonTwo"
	drawBuyButtonTwo();

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 19C0ABEE
	/// @DnDParent : 48D46AB1
	/// @DnDArgument : "function" "drawBuyButtonThree"
	drawBuyButtonThree();
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 654F5BB7
/// @DnDArgument : "color" "default_draw_color"
draw_set_colour(default_draw_color & $ffffff);
var l654F5BB7_0=(default_draw_color >> 24);
draw_set_alpha(l654F5BB7_0 / $ff);