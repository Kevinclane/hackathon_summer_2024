/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 42DE8F58
/// @DnDArgument : "funcName" "drawToggleButton"
function drawToggleButton() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5B4AA7D1
	/// @DnDParent : 42DE8F58
	/// @DnDArgument : "color" "$FF4C4C4C"
	draw_set_colour($FF4C4C4C & $ffffff);
	var l5B4AA7D1_0=($FF4C4C4C >> 24);
	draw_set_alpha(l5B4AA7D1_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 6D64908B
	/// @DnDParent : 42DE8F58
	/// @DnDArgument : "x1" "605"
	/// @DnDArgument : "y1" "250"
	/// @DnDArgument : "x2" "665"
	/// @DnDArgument : "y2" "273"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(605, 250, 665, 273, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1E960DE2
	/// @DnDParent : 42DE8F58
	/// @DnDArgument : "color" "default_draw_color"
	draw_set_colour(default_draw_color & $ffffff);
	var l1E960DE2_0=(default_draw_color >> 24);
	draw_set_alpha(l1E960DE2_0 / $ff);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33EC1495
	/// @DnDParent : 42DE8F58
	/// @DnDArgument : "var" "mode"
	/// @DnDArgument : "value" ""Sell""
	if(mode == "Sell")
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 78E64246
		/// @DnDParent : 33EC1495
		/// @DnDArgument : "x" "615"
		/// @DnDArgument : "y" "253"
		/// @DnDArgument : "xscale" ".9"
		/// @DnDArgument : "yscale" ".9"
		/// @DnDArgument : "caption" ""F Buy""
		draw_text_transformed(615, 253, string("F Buy") + "", .9, .9, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 00A63C42
	/// @DnDParent : 42DE8F58
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 232E18D6
		/// @DnDParent : 00A63C42
		/// @DnDArgument : "x" "615"
		/// @DnDArgument : "y" "253"
		/// @DnDArgument : "xscale" ".9"
		/// @DnDArgument : "yscale" ".9"
		/// @DnDArgument : "caption" ""F Sell""
		draw_text_transformed(615, 253, string("F Sell") + "", .9, .9, 0);
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 55696E00
/// @DnDArgument : "funcName" "drawButtonOne"
function drawButtonOne() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5830A906
	/// @DnDParent : 55696E00
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l5830A906_0=(button_border_color >> 24);
	draw_set_alpha(l5830A906_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 36A29C02
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x1" "495"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "555"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(495, 70, 555, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 1826B4C2
	/// @DnDParent : 55696E00
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l1826B4C2_0=(button_background_color >> 24);
	draw_set_alpha(l1826B4C2_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 443B4809
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x1" "496"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "554"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(496, 71, 554, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 66AB22C8
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x" "505"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_wheat_icon"
	/// @DnDSaveInfo : "sprite" "spr_wheat_icon"
	draw_sprite(spr_wheat_icon, 0, 505, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5726740A
	/// @DnDParent : 55696E00
	/// @DnDArgument : "var" "Player.resources.wheat"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(Player.resources.wheat < 5)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5454D3C6
		/// @DnDParent : 5726740A
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l5454D3C6_0=($FF3232FF >> 24);
		draw_set_alpha(l5454D3C6_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 661B6340
	/// @DnDParent : 55696E00
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 18E0F3DF
		/// @DnDParent : 661B6340
		/// @DnDArgument : "color" "default_draw_color"
		draw_set_colour(default_draw_color & $ffffff);
		var l18E0F3DF_0=(default_draw_color >> 24);
		draw_set_alpha(l18E0F3DF_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1986541B
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x" "507"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""Sell 5""
	draw_text_transformed(507, 129, string("Sell 5") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 05A4A02F
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x" "507"
	/// @DnDArgument : "y" "147"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""2g ea""
	draw_text_transformed(507, 147, string("2g ea") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 714D7692
	/// @DnDParent : 55696E00
	/// @DnDArgument : "x" "520"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""1""
	draw_text(520, 165, string("1") + "");
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 758A81FB
/// @DnDArgument : "funcName" "drawButtonTwo"
function drawButtonTwo() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 21033030
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l21033030_0=(button_border_color >> 24);
	draw_set_alpha(l21033030_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 59E5DDFC
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x1" "565"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "625"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(565, 70, 625, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7DC12F9A
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l7DC12F9A_0=(button_background_color >> 24);
	draw_set_alpha(l7DC12F9A_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 0B388464
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x1" "564"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "624"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(564, 71, 624, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 37FEEA14
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x" "575"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_radish_icon"
	/// @DnDSaveInfo : "sprite" "spr_radish_icon"
	draw_sprite(spr_radish_icon, 0, 575, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 353E4C67
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "var" "Player.resources.radish"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "5"
	if(Player.resources.radish < 5)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 04845AFD
		/// @DnDParent : 353E4C67
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l04845AFD_0=($FF3232FF >> 24);
		draw_set_alpha(l04845AFD_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5F77ED9E
	/// @DnDParent : 758A81FB
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 14B910DE
		/// @DnDParent : 5F77ED9E
		/// @DnDArgument : "color" "default_draw_color"
		draw_set_colour(default_draw_color & $ffffff);
		var l14B910DE_0=(default_draw_color >> 24);
		draw_set_alpha(l14B910DE_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 19032163
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x" "575"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""Sell 5""
	draw_text_transformed(575, 129, string("Sell 5") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 45127490
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x" "575"
	/// @DnDArgument : "y" "147"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""2g ea""
	draw_text_transformed(575, 147, string("2g ea") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0478FF52
	/// @DnDParent : 758A81FB
	/// @DnDArgument : "x" "590"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""2""
	draw_text(590, 165, string("2") + "");
}