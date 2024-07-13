/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3B1EC1B9
/// @DnDArgument : "color" "$FF4C4C4C"
draw_set_colour($FF4C4C4C & $ffffff);
var l3B1EC1B9_0=($FF4C4C4C >> 24);
draw_set_alpha(l3B1EC1B9_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 470327FE
/// @DnDArgument : "x1" "4"
/// @DnDArgument : "y1" "4"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "300"
/// @DnDArgument : "fill" "1"
draw_rectangle(4, 4, 100, 300, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 67020454
draw_set_colour($FFFFFFFF & $ffffff);
var l67020454_0=($FFFFFFFF >> 24);
draw_set_alpha(l67020454_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0922DC1B
/// @DnDArgument : "x" "6"
/// @DnDArgument : "y" "6"
/// @DnDArgument : "sprite" "spr_gold_coin_icon"
/// @DnDSaveInfo : "sprite" "spr_gold_coin_icon"
draw_sprite(spr_gold_coin_icon, 0, 6, 6);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7AAE11BE
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "caption" "Player.resources.gold"
draw_text(50, 15, string(Player.resources.gold) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 0B8DC88D
/// @DnDArgument : "x" "6"
/// @DnDArgument : "y" "56"
/// @DnDArgument : "sprite" "spr_wheat_icon"
/// @DnDSaveInfo : "sprite" "spr_wheat_icon"
draw_sprite(spr_wheat_icon, 0, 6, 56);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 35601088
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "caption" "Player.resources.wheat"
draw_text(50, 65, string(Player.resources.wheat) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5BFDE977
/// @DnDArgument : "x" "6"
/// @DnDArgument : "y" "106"
/// @DnDArgument : "sprite" "spr_radish_icon"
/// @DnDSaveInfo : "sprite" "spr_radish_icon"
draw_sprite(spr_radish_icon, 0, 6, 106);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 53F292F8
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "115"
/// @DnDArgument : "caption" "Player.resources.radish"
draw_text(50, 115, string(Player.resources.radish) + "");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 07CE96C3
/// @DnDArgument : "var" "pig_pen.count"
/// @DnDArgument : "op" "2"
if(pig_pen.count > 0)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 45A664DD
	/// @DnDParent : 07CE96C3
	/// @DnDArgument : "color" "$FF2CACCC"
	draw_set_colour($FF2CACCC & $ffffff);
	var l45A664DD_0=($FF2CACCC >> 24);
	draw_set_alpha(l45A664DD_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 56DA1D85
	/// @DnDParent : 07CE96C3
	/// @DnDArgument : "x" "65"
	/// @DnDArgument : "y" "117"
	/// @DnDArgument : "xscale" ".8"
	/// @DnDArgument : "yscale" ".8"
	/// @DnDArgument : "caption" ""(-{0})", pig_pen.count * 10"
	draw_text_transformed(65, 117, string("(-{0})", pig_pen.count * 10) + "", .8, .8, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 4A8C4DAE
	/// @DnDParent : 07CE96C3
	draw_set_colour($FFFFFFFF & $ffffff);
	var l4A8C4DAE_0=($FFFFFFFF >> 24);
	draw_set_alpha(l4A8C4DAE_0 / $ff);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 31D0AB45
/// @DnDArgument : "x" "6"
/// @DnDArgument : "y" "156"
/// @DnDArgument : "sprite" "spr_wood_icon"
/// @DnDSaveInfo : "sprite" "spr_wood_icon"
draw_sprite(spr_wood_icon, 0, 6, 156);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 63CD56D0
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "165"
/// @DnDArgument : "caption" "Player.resources.wood"
draw_text(50, 165, string(Player.resources.wood) + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 40DAC901
/// @DnDArgument : "x" "6"
/// @DnDArgument : "y" "206"
/// @DnDArgument : "sprite" "spr_meat_icon"
/// @DnDSaveInfo : "sprite" "spr_meat_icon"
draw_sprite(spr_meat_icon, 0, 6, 206);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1ECFA2C9
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "215"
/// @DnDArgument : "caption" "Player.resources.meat"
draw_text(50, 215, string(Player.resources.meat) + "");