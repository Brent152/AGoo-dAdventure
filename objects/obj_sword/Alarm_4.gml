/// @description Spin
// You can write your code in this editor
if (spin_charge > 0) {
	show_debug_message(spin_charge);
	image_angle -= 12;
	spin_charge--;
	alarm[4] = 1;
} else {
	alarm[2] = 1;
}
