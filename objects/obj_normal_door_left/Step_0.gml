/// @description Insert description here
// You can write your code in this editor
if (global.enemies_remaining == 0) { // Room cleared
	sprite_index = spr_normal_door_left_open;
	if (!opened) {
		audio_play_sound(snd_door_through, 2, 0);
		opened = true;
	}
} else {
	sprite_index = spr_normal_door_left_closed;
}