/// @description Slime knocked
// You can write your code in this editor
show_debug_message("alarm1");
show_debug_message(string(index));
var knock_distance = 10;
if (index > 0) {
	obj_slime.x += knock_distance*uvector_x*-1;
	obj_slime.y += knock_distance*uvector_y*-1;
	index--;
	alarm[1] = 1;
} else {
	obj_slime.slime_knocked = false;
}
