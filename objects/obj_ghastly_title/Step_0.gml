/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_ghastly_menace)) {
	if (obj_ghastly_menace.current_health/obj_ghastly_menace.max_health > .75) {
		image_index = 0;
	} else if (obj_ghastly_menace.current_health/obj_ghastly_menace.max_health > .50) {
		image_index = 1;
	} else if (obj_ghastly_menace.current_health/obj_ghastly_menace.max_health > .25) {
		image_index = 2;
	} else {
		image_index = 3;
	}
}