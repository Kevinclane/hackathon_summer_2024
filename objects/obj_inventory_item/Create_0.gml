/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6EC847B6
/// @DnDArgument : "funcName" "setItem"
/// @DnDArgument : "arg" "itemToSet"
function setItem(itemToSet) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 664B9A08
	/// @DnDParent : 6EC847B6
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "active"
	active = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3467989A
	/// @DnDParent : 6EC847B6
	/// @DnDArgument : "expr" "itemToSet"
	/// @DnDArgument : "var" "item"
	item = itemToSet;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20F68390
	/// @DnDParent : 6EC847B6
	/// @DnDArgument : "var" "item"
	if(item == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 07B09834
		/// @DnDParent : 20F68390
		/// @DnDArgument : "spriteind" "spr_empty_icon"
		/// @DnDSaveInfo : "spriteind" "spr_empty_icon"
		sprite_index = spr_empty_icon;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0E6601BB
	/// @DnDParent : 6EC847B6
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 05346967
		/// @DnDParent : 0E6601BB
		/// @DnDArgument : "spriteind" "item.sprite"
		sprite_index = item.sprite;
		image_index = 0;
	}
}