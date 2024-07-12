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
/// @DnDArgument : "sprite" "Gold_Coin"
/// @DnDSaveInfo : "sprite" "Gold_Coin"
draw_sprite(Gold_Coin, 0, 6, 6);

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
/// @DnDArgument : "sprite" "WheatIcon1"
/// @DnDSaveInfo : "sprite" "WheatIcon1"
draw_sprite(WheatIcon1, 0, 6, 56);

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
/// @DnDArgument : "sprite" "RadishIcon1"
/// @DnDSaveInfo : "sprite" "RadishIcon1"
draw_sprite(RadishIcon1, 0, 6, 106);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 53F292F8
/// @DnDArgument : "x" "50"
/// @DnDArgument : "y" "115"
/// @DnDArgument : "caption" "Player.resources.radish"
draw_text(50, 115, string(Player.resources.radish) + "");