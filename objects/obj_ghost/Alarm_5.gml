/// @description Shoots beam
// You can write your code in this editor
instance_create_layer(x, y, "Instances", obj_ghost_beam);
audio_play_sound(snd_ghost_beam, 2, 0);