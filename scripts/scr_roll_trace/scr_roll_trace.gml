// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_roll_trace(x, y){
	if (global.time mod 10 == 0) {
		instance_create_layer(x, y, "Instances", obj_health_trace);
	}
}