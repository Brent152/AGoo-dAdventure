/// @description Destroy
// You can write your code in this editor
if (instance_exists(obj_blades)) {
	obj_blades.vspeed = 5;
	obj_blades.x = 640;
	obj_blades.y = -500;
	obj_blades.coming_back = true;
	instance_destroy();
} else {
	instance_destroy();
}
