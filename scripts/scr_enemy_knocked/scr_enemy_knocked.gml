// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_enemy_knocked(enemy){
	enemy.knocked = true;
	var vector_x = obj_slime.x - enemy.x;
	var vector_y = obj_slime.y - enemy.y;
	enemy.uvector_x = vector_x/sqrt(power(vector_x, 2) + power(vector_y, 2));
	enemy.uvector_y = vector_y/sqrt(power(vector_x, 2) + power(vector_y, 2));
	enemy.index = 10;
	enemy.alarm[10] = 1;

}