/// @description Insert description here
// You can write your code in this editor
invulnerable = false;
knocked = false;
sounding = false;
attacking = false;
alarm[0] = 350;
audio_play_sound(snd_blades_land, 2, 0);
if (!audio_is_playing(snd_blades_heartbeat)) {
	audio_play_sound(snd_blades_heartbeat, 1, 1);
}