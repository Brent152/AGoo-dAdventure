/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_blades)) {
	if (obj_blades.current_health/obj_blades.max_health > .75) {
		image_index = 0;
	} else if (obj_blades.current_health/obj_blades.max_health > .50) {
		image_index = 1;
	} else if (obj_blades.current_health/obj_blades.max_health > .25) {
		image_index = 2;
	} else {
		image_index = 3;
	}
}