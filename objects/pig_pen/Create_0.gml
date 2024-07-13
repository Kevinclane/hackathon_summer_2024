/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0F787278
/// @DnDArgument : "funcName" "addPig"
function addPig() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 101F0DC9
	/// @DnDParent : 0F787278
	/// @DnDArgument : "expr" "count + 1"
	/// @DnDArgument : "var" "count"
	count = count + 1;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7F1F08C5
	/// @DnDParent : 0F787278
	/// @DnDArgument : "expr" "count"
	var l7F1F08C5_0 = count;
	switch(l7F1F08C5_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 73E48A55
		/// @DnDParent : 7F1F08C5
		/// @DnDArgument : "const" "1"
		case 1:
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1851CBE4
			/// @DnDParent : 73E48A55
			/// @DnDArgument : "xpos" "100"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "90"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_pig_1"
			/// @DnDArgument : "layer" ""Instances_1""
			/// @DnDSaveInfo : "objectid" "obj_pig_1"
			instance_create_layer(x + 100, y + 90, "Instances_1", obj_pig_1);
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 67F3B3CF
		/// @DnDParent : 7F1F08C5
		/// @DnDArgument : "const" "2"
		case 2:
		
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4538D721
		/// @DnDParent : 7F1F08C5
		/// @DnDArgument : "const" "3"
		case 3:
		
			break;
	}
}