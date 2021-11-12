/// @description Move up
// You can write your code in this editor
show_debug_message("alarm1");
if (move_index > 0) {
	vspeed -= move_index;
	move_index--;
	alarm[1] = 10;
} else {
	hspeed = 0;
	blades_left = 3;
	alarm[2] = 50;
	charge_sounding = false;
	audio_stop_sound(snd_blades_charge);
	audio_play_sound(snd_blades_looming, 1, 1);
}