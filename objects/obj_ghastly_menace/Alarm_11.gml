/// @description Knocked
// You can write your code in this editor
if (knocked_index > 0) {
	x += knock_distance*uvector_x*-1;
	y += knock_distance*uvector_y*-1;
	knocked_index--;
	alarm[11] = 1;
}