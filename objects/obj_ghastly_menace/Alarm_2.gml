/// @description Fireballing
// You can write your code in this editor
if (fireball_index < 4) {
	instance_create_layer(x, y, "Instances", obj_fireball);
	fireball_index++;
	alarm[2] = 1;
} else {
	audio_play_sound(snd_fireshot_2, 2, 0);
	alarm[10] = 10;
	alarm[8] = 110;
}
