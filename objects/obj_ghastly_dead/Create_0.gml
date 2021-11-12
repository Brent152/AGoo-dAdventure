/// @description Insert description here
// You can write your code in this editor
if (obj_slime.x > x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}
audio_play_sound(snd_ghastly_death, 2, 0);
alarm[0] = 45;
obj_slime.boss_alive = false;
audio_stop_sound(snd_music_boss);
audio_play_sound(snd_music_normal, 0, 1);