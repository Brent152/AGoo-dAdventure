// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_slime_knocked(enemy){
	obj_slime.slime_knocked = true;
	var vector_x = enemy.x - obj_slime.x;
	var vector_y = enemy.y - obj_slime.y;
	obj_manager.uvector_x = vector_x/sqrt(power(vector_x, 2) + power(vector_y, 2));
	obj_manager.uvector_y = vector_y/sqrt(power(vector_x, 2) + power(vector_y, 2));
	obj_manager.index = 10;
	obj_manager.alarm[1] = 1;
}