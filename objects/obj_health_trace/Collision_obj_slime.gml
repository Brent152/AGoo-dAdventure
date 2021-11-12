/// @description Insert description here
// You can write your code in this editor
obj_slime.current_health += 10;
// Keep health under max health
if (obj_slime.current_health > obj_slime.max_health) {
	obj_slime.current_health = obj_slime.max_health;
}
audio_play_sound(snd_heal, 2, 0);
instance_destroy();