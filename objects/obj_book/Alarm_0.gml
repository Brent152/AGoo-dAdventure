/// @description Shoot
// You can write your code in this editor
if (!invulnerable && charging) {
	instance_create_layer(x, y, "Instances", obj_magic_shot);
	charging = false;
}