/// @description Summon blades
// You can write your code in this editor
show_debug_message("alarm2");
if (blades_left > 0) {
	instance_create_layer(obj_slime.x, -200, "Instances", obj_blade_falling);
	alarm[2] = 50;
	blades_left--;
}
