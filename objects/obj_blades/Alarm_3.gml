/// @description Yeet move
// You can write your code in this editor
show_debug_message("alarm3");
if (yeet_index > 0) {
	if (hspeed > 0) {
		hspeed++;
	} else {
		hspeed--;
	}
	if (vspeed > 0) {
		vspeed++;
	} else {
		vspeed--;
	}
	yeet_index--;
	alarm[3] = 3;
}