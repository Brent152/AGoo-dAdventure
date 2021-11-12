// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_slime_damaged(){
	audio_play_sound(snd_slime_damaged, 3, 0);
	obj_slime.invulnerable = true;
	obj_manager.alarm[0] = 45;
}