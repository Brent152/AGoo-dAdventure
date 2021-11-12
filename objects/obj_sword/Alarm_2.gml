/// @description Attack
// You can write your code in this editor
speed = 16;
sprite_index = spr_sword_move;
image_index = 0;
audio_stop_sound(snd_sword_charging);
audio_play_sound(snd_sword_attack, 1, 0);
direction = point_direction(x, y, obj_slime.x, obj_slime.y);
image_angle = direction+90;
alarm[3] = 100;