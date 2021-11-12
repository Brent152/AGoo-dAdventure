/// @description Insert description here
// You can write your code in this editor
show_debug_message(obj_slime.slime_dashing);
if (!obj_slime.invulnerable && !obj_slime.slime_dashing) {
	obj_slime.current_health -= 5;
	scr_slime_damaged();
	image_speed = 1;
	audio_play_sound(snd_spikes, 2, 0);
}
