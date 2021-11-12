/// @description Knocked
// You can write your code in this editor
var knock_distance = 6;
if (index > 0) {
	x += knock_distance*uvector_x*-1;
	y += knock_distance*uvector_y*-1;
	index--;
	alarm[10] = 1;
} else {
	knocked = false;
}