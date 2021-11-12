/// @description Insert description here
// You can write your code in this editor
obj_slime.max_health += 100;
obj_slime.current_health = obj_slime.max_health;
audio_play_sound(snd_ding, 2, 0);
instance_destroy();