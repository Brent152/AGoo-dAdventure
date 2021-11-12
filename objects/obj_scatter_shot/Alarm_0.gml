/// @description Explode
// You can write your code in this editor
if (index < 8) {
	instance_create_layer(x, y, "Instances", obj_scatter_piece);
	index++;
	alarm[0] = 1;
} else {
	audio_play_sound(snd_scattershot_explode, 2, 0);
	instance_destroy();
	obj_ghastly_menace.scattershotting = false;
}