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
/// @DnDArgument : "funcName" "drawSellButtonOne"
function drawSellButtonOne() 
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
/// @DnDArgument : "funcName" "drawSellButtonTwo"
function drawSellButtonTwo() 
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
	/// @DnDArgument : "x1" "566"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "624"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(566, 71, 624, 184, 0);

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

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1C2A3F56
/// @DnDArgument : "funcName" "drawSellButtonThree"
function drawSellButtonThree() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4E212286
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l4E212286_0=(button_border_color >> 24);
	draw_set_alpha(l4E212286_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 63E48D09
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x1" "635"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "695"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(635, 70, 695, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0E27E185
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l0E27E185_0=(button_background_color >> 24);
	draw_set_alpha(l0E27E185_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 0CE8A35F
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x1" "636"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "694"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(636, 71, 694, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3AB0F151
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x" "645"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_meat_icon"
	/// @DnDSaveInfo : "sprite" "spr_meat_icon"
	draw_sprite(spr_meat_icon, 0, 645, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32565400
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "var" "Player.resources.meat"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(Player.resources.meat < 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 2C351811
		/// @DnDParent : 32565400
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l2C351811_0=($FF3232FF >> 24);
		draw_set_alpha(l2C351811_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4787129A
	/// @DnDParent : 1C2A3F56
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 0A239401
		/// @DnDParent : 4787129A
		/// @DnDArgument : "color" "default_draw_color"
		draw_set_colour(default_draw_color & $ffffff);
		var l0A239401_0=(default_draw_color >> 24);
		draw_set_alpha(l0A239401_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1DEC5E69
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x" "645"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""Sell 1""
	draw_text_transformed(645, 129, string("Sell 1") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7857E853
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x" "645"
	/// @DnDArgument : "y" "147"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""10g ea""
	draw_text_transformed(645, 147, string("10g ea") + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 006F7FC9
	/// @DnDParent : 1C2A3F56
	/// @DnDArgument : "x" "660"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""3""
	draw_text(660, 165, string("3") + "");
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 59FE6D44
/// @DnDArgument : "funcName" "drawBuyButtonOne"
function drawBuyButtonOne() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6F601A03
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l6F601A03_0=(button_border_color >> 24);
	draw_set_alpha(l6F601A03_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 71DB0F5A
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x1" "495"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "555"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(495, 70, 555, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6C4809A0
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l6C4809A0_0=(button_background_color >> 24);
	draw_set_alpha(l6C4809A0_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1370FFB7
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x1" "496"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "554"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(496, 71, 554, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7804A3D5
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x" "505"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_plow_icon"
	/// @DnDSaveInfo : "sprite" "spr_plow_icon"
	draw_sprite(spr_plow_icon, 0, 505, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4C16B1E8
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "var" "Player.resources.wood"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "plow_cost.wood"
	if(Player.resources.wood < plow_cost.wood)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 00DB614A
		/// @DnDParent : 4C16B1E8
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l00DB614A_0=($FF3232FF >> 24);
		draw_set_alpha(l00DB614A_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 27B97BEE
	/// @DnDParent : 59FE6D44
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14C8C2FE
		/// @DnDParent : 27B97BEE
		/// @DnDArgument : "var" "Player.resources.gold"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "plow_cost.gold"
		if(Player.resources.gold < plow_cost.gold)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 470F0D69
			/// @DnDParent : 14C8C2FE
			/// @DnDArgument : "color" "$FF3232FF"
			draw_set_colour($FF3232FF & $ffffff);
			var l470F0D69_0=($FF3232FF >> 24);
			draw_set_alpha(l470F0D69_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 467FF65E
		/// @DnDParent : 27B97BEE
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 35E481B9
			/// @DnDParent : 467FF65E
			/// @DnDArgument : "color" "default_draw_color"
			draw_set_colour(default_draw_color & $ffffff);
			var l35E481B9_0=(default_draw_color >> 24);
			draw_set_alpha(l35E481B9_0 / $ff);
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6FFEF527
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x" "505"
	/// @DnDArgument : "y" "113"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""Lv: {0}", Player.upgrades.plow"
	draw_text_transformed(505, 113, string("Lv: {0}", Player.upgrades.plow) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4BC2687C
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x" "510"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0}g", plow_cost.gold"
	draw_text_transformed(510, 129, string("{0}g", plow_cost.gold) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 152F2A91
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x" "495"
	/// @DnDArgument : "y" "140"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0} wood", plow_cost.wood"
	draw_text_transformed(495, 140, string("{0} wood", plow_cost.wood) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 520D2D06
	/// @DnDParent : 59FE6D44
	/// @DnDArgument : "x" "520"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""1""
	draw_text(520, 165, string("1") + "");
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 599AF34E
/// @DnDArgument : "funcName" "drawBuyButtonTwo"
function drawBuyButtonTwo() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 053B45B6
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l053B45B6_0=(button_border_color >> 24);
	draw_set_alpha(l053B45B6_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 370D005D
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x1" "565"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "625"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(565, 70, 625, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 77982F7C
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l77982F7C_0=(button_background_color >> 24);
	draw_set_alpha(l77982F7C_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 049B563A
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x1" "566"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "624"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(566, 71, 624, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 348736CD
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x" "575"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_axe_icon"
	/// @DnDSaveInfo : "sprite" "spr_axe_icon"
	draw_sprite(spr_axe_icon, 0, 575, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D5B3FB5
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "var" "Player.resources.wood"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "axe_cost.wood"
	if(Player.resources.wood < axe_cost.wood)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 5ADE6D8B
		/// @DnDParent : 6D5B3FB5
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l5ADE6D8B_0=($FF3232FF >> 24);
		draw_set_alpha(l5ADE6D8B_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2DD74453
	/// @DnDParent : 599AF34E
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 420ADD43
		/// @DnDParent : 2DD74453
		/// @DnDArgument : "var" "Player.resources.gold"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "axe_cost.gold"
		if(Player.resources.gold < axe_cost.gold)
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 28DC39DE
			/// @DnDParent : 420ADD43
			/// @DnDArgument : "color" "$FF3232FF"
			draw_set_colour($FF3232FF & $ffffff);
			var l28DC39DE_0=($FF3232FF >> 24);
			draw_set_alpha(l28DC39DE_0 / $ff);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 16E1D3C0
		/// @DnDParent : 2DD74453
		else
		{
			/// @DnDAction : YoYo Games.Drawing.Set_Color
			/// @DnDVersion : 1
			/// @DnDHash : 21F759F6
			/// @DnDParent : 16E1D3C0
			/// @DnDArgument : "color" "default_draw_color"
			draw_set_colour(default_draw_color & $ffffff);
			var l21F759F6_0=(default_draw_color >> 24);
			draw_set_alpha(l21F759F6_0 / $ff);
		}
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 0559C7B5
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x" "575"
	/// @DnDArgument : "y" "113"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""Lv: {0}", Player.upgrades.axe"
	draw_text_transformed(575, 113, string("Lv: {0}", Player.upgrades.axe) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 33EDBC89
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x" "580"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0}g", axe_cost.gold"
	draw_text_transformed(580, 129, string("{0}g", axe_cost.gold) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6FA48835
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x" "565"
	/// @DnDArgument : "y" "140"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0} wood", axe_cost.wood"
	draw_text_transformed(565, 140, string("{0} wood", axe_cost.wood) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 1A8739C9
	/// @DnDParent : 599AF34E
	/// @DnDArgument : "x" "590"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""2""
	draw_text(590, 165, string("2") + "");
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 535F067C
/// @DnDArgument : "funcName" "drawBuyButtonThree"
function drawBuyButtonThree() 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0CD52438
	/// @DnDParent : 535F067C
	/// @DnDArgument : "color" "button_border_color"
	draw_set_colour(button_border_color & $ffffff);
	var l0CD52438_0=(button_border_color >> 24);
	draw_set_alpha(l0CD52438_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1BAAC721
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x1" "635"
	/// @DnDArgument : "y1" "70"
	/// @DnDArgument : "x2" "695"
	/// @DnDArgument : "y2" "185"
	draw_rectangle(635, 70, 695, 185, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 13C1179B
	/// @DnDParent : 535F067C
	/// @DnDArgument : "color" "button_background_color"
	draw_set_colour(button_background_color & $ffffff);
	var l13C1179B_0=(button_background_color >> 24);
	draw_set_alpha(l13C1179B_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
	/// @DnDVersion : 1
	/// @DnDHash : 1E8D86A2
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x1" "636"
	/// @DnDArgument : "y1" "71"
	/// @DnDArgument : "x2" "694"
	/// @DnDArgument : "y2" "184"
	/// @DnDArgument : "fill" "1"
	draw_rectangle(636, 71, 694, 184, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 48196725
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "645"
	/// @DnDArgument : "y" "75"
	/// @DnDArgument : "sprite" "spr_pig_icon"
	/// @DnDSaveInfo : "sprite" "spr_pig_icon"
	draw_sprite(spr_pig_icon, 0, 645, 75);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DC6D27E
	/// @DnDParent : 535F067C
	/// @DnDArgument : "var" "Player.resources.gold"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "pig_cost"
	if(Player.resources.gold < pig_cost)
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 44A567C7
		/// @DnDParent : 5DC6D27E
		/// @DnDArgument : "color" "$FF3232FF"
		draw_set_colour($FF3232FF & $ffffff);
		var l44A567C7_0=($FF3232FF >> 24);
		draw_set_alpha(l44A567C7_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 18939F7E
	/// @DnDParent : 535F067C
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1E9FF9BC
		/// @DnDParent : 18939F7E
		/// @DnDArgument : "color" "default_draw_color"
		draw_set_colour(default_draw_color & $ffffff);
		var l1E9FF9BC_0=(default_draw_color >> 24);
		draw_set_alpha(l1E9FF9BC_0 / $ff);
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2CD05033
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "660"
	/// @DnDArgument : "y" "113"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0}", pig_pen.count"
	draw_text_transformed(660, 113, string("{0}", pig_pen.count) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3762A870
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "650"
	/// @DnDArgument : "y" "129"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "caption" ""{0}g", pig_cost"
	draw_text_transformed(650, 129, string("{0}g", pig_cost) + "", .9, .9, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5EDC7EC5
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "635"
	/// @DnDArgument : "y" "145"
	/// @DnDArgument : "xscale" ".8"
	/// @DnDArgument : "yscale" ".8"
	/// @DnDArgument : "caption" ""-10 radish""
	draw_text_transformed(635, 145, string("-10 radish") + "", .8, .8, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2043CDEB
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "640"
	/// @DnDArgument : "y" "155"
	/// @DnDArgument : "xscale" ".8"
	/// @DnDArgument : "yscale" ".8"
	/// @DnDArgument : "caption" ""per min""
	draw_text_transformed(640, 155, string("per min") + "", .8, .8, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5F371E22
	/// @DnDParent : 535F067C
	/// @DnDArgument : "x" "660"
	/// @DnDArgument : "y" "165"
	/// @DnDArgument : "caption" ""3""
	draw_text(660, 165, string("3") + "");
}