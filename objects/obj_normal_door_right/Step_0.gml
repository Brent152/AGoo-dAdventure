/// @description Insert description here
// You can write your code in this editor
if (global.enemies_remaining == 0) { // Room cleared
	if (!opened) {
		audio_play_sound(snd_door_open, 2, 0);
		opened = true;
	}
	sprite_index = spr_normal_door_right_open;
} else {
	sprite_index = spr_normal_door_right_closed;
}