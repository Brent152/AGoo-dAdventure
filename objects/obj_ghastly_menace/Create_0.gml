/// @description
// You can write your code in this editor
global.enemies_remaining += 1;
invulnerable = false;
knocked = false;
sounding = false;
attacking = false;
max_health = 500;
current_health = 500;
scattershotting = false;
fireballing = false;
fireball_index = 0;
enforced = false;
enforcing = false;
knock_distance = 3;
fire_alive = false;
obj_slime.boss_alive = true;
audio_stop_sound(snd_music_normal);
audio_play_sound(snd_music_boss, 0, 1);