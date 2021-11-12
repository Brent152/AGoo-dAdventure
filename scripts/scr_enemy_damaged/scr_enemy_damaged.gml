// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_damaged(enemy){
	enemy.invulnerable = true;
	enemy.alarm[9] = 30;
}