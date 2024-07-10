/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4684DB12
/// @DnDArgument : "x" "480"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "sprite" "Window"
/// @DnDSaveInfo : "sprite" "Window"
draw_sprite(Window, 0, 480, 50);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 02A5454B
/// @DnDArgument : "color" "$FFCCCCCC"
draw_set_colour($FFCCCCCC & $ffffff);
var l02A5454B_0=($FFCCCCCC >> 24);
draw_set_alpha(l02A5454B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 15E09368
/// @DnDComment : Button 1 border
/// @DnDArgument : "x1" "495"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "x2" "545"
/// @DnDArgument : "y2" "145"
draw_rectangle(495, 70, 545, 145, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 49F8BDED
/// @DnDComment : Button 2 Border
/// @DnDArgument : "x1" "555"
/// @DnDArgument : "y1" "70"
/// @DnDArgument : "x2" "605"
/// @DnDArgument : "y2" "145"
draw_rectangle(555, 70, 605, 145, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5BCA328B
/// @DnDArgument : "color" "$FF31B8FF"
draw_set_colour($FF31B8FF & $ffffff);
var l5BCA328B_0=($FF31B8FF >> 24);
draw_set_alpha(l5BCA328B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 10F95DBD
/// @DnDComment : Button 1 Background
/// @DnDArgument : "x1" "496"
/// @DnDArgument : "y1" "71"
/// @DnDArgument : "x2" "544"
/// @DnDArgument : "y2" "144"
/// @DnDArgument : "fill" "1"
draw_rectangle(496, 71, 544, 144, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 2F4269CC
/// @DnDComment : Button 2 Background
/// @DnDArgument : "x1" "556"
/// @DnDArgument : "y1" "71"
/// @DnDArgument : "x2" "604"
/// @DnDArgument : "y2" "144"
/// @DnDArgument : "fill" "1"
draw_rectangle(556, 71, 604, 144, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 319C2A7E
/// @DnDComment : Button 1 Icon
/// @DnDArgument : "x" "500"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "sprite" "WheatIcon1"
/// @DnDSaveInfo : "sprite" "WheatIcon1"
draw_sprite(WheatIcon1, 0, 500, 75);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 7D8EEECE
/// @DnDComment : Button 2 Icon
/// @DnDArgument : "x" "560"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "sprite" "RadishIcon1"
/// @DnDSaveInfo : "sprite" "RadishIcon1"
draw_sprite(RadishIcon1, 0, 560, 75);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5F55344F
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l5F55344F_0=($FF000000 >> 24);
draw_set_alpha(l5F55344F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 46D13506
/// @DnDComment : Button 1 number
/// @DnDArgument : "x" "518"
/// @DnDArgument : "y" "123"
/// @DnDArgument : "caption" ""1""
draw_text(518, 123, string("1") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 767060DD
/// @DnDComment : Button 1 number
/// @DnDArgument : "x" "574"
/// @DnDArgument : "y" "123"
/// @DnDArgument : "caption" ""2""
draw_text(574, 123, string("2") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1550F5A4
/// @DnDArgument : "color" "$FFCCCCCC"
draw_set_colour($FFCCCCCC & $ffffff);
var l1550F5A4_0=($FFCCCCCC >> 24);
draw_set_alpha(l1550F5A4_0 / $ff);