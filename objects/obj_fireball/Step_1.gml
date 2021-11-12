/// @description Keep in room
// You can write your code in this editor
if (x < 80) {
	instance_create_layer(x, y, "Instances", obj_fire);
	instance_destroy();
} else if ( x > (1280)) {
	instance_create_layer(x, y, "Instances", obj_fire);
	instance_destroy();
}
if (y < 50+20) {
	instance_create_layer(x, y, "Instances", obj_fire);
	instance_destroy();
} else if ( y > (720 - 88)) {
	instance_create_layer(x, y, "Instances", obj_fire);
	instance_destroy();
}