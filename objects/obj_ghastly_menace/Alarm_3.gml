/// @description Enforcing
// You can write your code in this editor
enforced = true;
instance_create_layer(x+600, y, "Instances", obj_book);
instance_create_layer(x-600, y, "Instances", obj_book);
enforcing = false;
alarm[10] = 60;
alarm[4] = 1200;
alarm[8] = 165;