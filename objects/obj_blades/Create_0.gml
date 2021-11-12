/// @description
// You can write your code in this editor
global.enemies_remaining += 1;
obj_slime.boss_alive = true;
spin_speed = 3;
invulnerable = false;
knocked = false;
sounding = false;
attacking = false;
max_health = 250;
current_health = 250;
knock_distance = 3;
summoning = false;
spin_index = 0;
move_index = 0;
blades_left = 0;
coming_back = false;
yeeting = false;
yeet_index = 0;
leave_room = false;
charge_sounding = false;
audio_stop_sound(snd_music_normal);
audio_play_sound(snd_music_boss, 0, 1);


hspeed = 0;
vspeed = 0;
