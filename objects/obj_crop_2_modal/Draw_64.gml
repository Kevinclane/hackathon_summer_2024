/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 13DD72D4
/// @DnDArgument : "x" "480"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "sprite" "Window"
/// @DnDSaveInfo : "sprite" "Window"
draw_sprite(Window, 0, 480, 50);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 33CE99BE
/// @DnDArgument : "color" "$FFCCCCCC"
draw_set_colour($FFCCCCCC & $ffffff);
var l33CE99BE_0=($FFCCCCCC >> 24);
draw_set_alpha(l33CE99BE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 6079EFD9
/// @DnDComment : Button 1 border
/// @DnDArgument : "x1" "495"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "x2" "545"
/// @DnDArgument : "y2" "145"
draw_rectangle(495, 70, 545, 145, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 5DFC4057
/// @DnDComment : Button 2 Border
/// @DnDArgument : "x1" "555"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "x2" "605"
/// @DnDArgument : "y2" "145"
draw_rectangle(555, 70, 605, 145, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 57FFBDFA
/// @DnDArgument : "color" "$FF31B8FF"
draw_set_colour($FF31B8FF & $ffffff);
var l57FFBDFA_0=($FF31B8FF >> 24);
draw_set_alpha(l57FFBDFA_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 31EE5DED
/// @DnDComment : Button 1 Background
/// @DnDArgument : "x1" "496"
/// @DnDArgument : "y1" "71"
/// @DnDArgument : "x2" "544"
/// @DnDArgument : "y2" "144"
/// @DnDArgument : "fill" "1"
draw_rectangle(496, 71, 544, 144, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 7D231DBB
/// @DnDComment : Button 2 Background
/// @DnDArgument : "x1" "556"
/// @DnDArgument : "y1" "71"
/// @DnDArgument : "x2" "604"
/// @DnDArgument : "y2" "144"
/// @DnDArgument : "fill" "1"
draw_rectangle(556, 71, 604, 144, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7ECDDE65
/// @DnDComment : Button 1 Icon
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "sprite" "spr_wheat_icon"
/// @DnDSaveInfo : "sprite" "spr_wheat_icon"
draw_sprite(spr_wheat_icon, 0, 500, 75);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 29761BF8
/// @DnDComment : Button 2 Icon
/// @DnDArgument : "x" "560"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "sprite" "spr_radish_icon"
/// @DnDSaveInfo : "sprite" "spr_radish_icon"
draw_sprite(spr_radish_icon, 0, 560, 75);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 38252CFA
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l38252CFA_0=($FF000000 >> 24);
draw_set_alpha(l38252CFA_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 50E058BD
/// @DnDComment : Button 1 number
/// @DnDArgument : "x" "518"
/// @DnDArgument : "y" "123"
/// @DnDArgument : "caption" ""1""
draw_text(518, 123, string("1") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 659610B0
/// @DnDComment : Button 1 number
/// @DnDArgument : "x" "574"
/// @DnDArgument : "y" "123"
/// @DnDArgument : "caption" ""2""
draw_text(574, 123, string("2") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 79B063D4
/// @DnDArgument : "color" "$FFCCCCCC"
draw_set_colour($FFCCCCCC & $ffffff);
var l79B063D4_0=($FFCCCCCC >> 24);
draw_set_alpha(l79B063D4_0 / $ff);