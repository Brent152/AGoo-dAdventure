/// @description Insert description here
// You can write your code in this editor
if (ytarget - y < -25) {
	instance_create_layer(x, y-10, "Instances", obj_blade_floor);
	instance_destroy();
}