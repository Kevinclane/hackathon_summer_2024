/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4E91C4F0
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.window_is_open"
global.window_is_open = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 328FF360
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.game_is_paused"
global.game_is_paused = false;

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 5786339A
/// @DnDArgument : "font" "Font1"
/// @DnDSaveInfo : "font" "Font1"
draw_set_font(Font1);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 31505829
/// @DnDArgument : "value" "$FFE5E5E5"
/// @DnDArgument : "var" "global.default_draw_color"
global.default_draw_color = $FFE5E5E5;

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6311367B
/// @DnDArgument : "color" "global.default_draw_color"
draw_set_colour(global.default_draw_color & $ffffff);
var l6311367B_0=(global.default_draw_color >> 24);
draw_set_alpha(l6311367B_0 / $ff);