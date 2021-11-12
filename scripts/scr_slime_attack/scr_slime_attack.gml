// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_slime_attack(){
	if (obj_slime.arrow_left) { // Attack left
		obj_slime.slime_attacking = true;
		obj_slime.image_xscale = 1;
		obj_slime.sprite_index = spr_slime_attacking;
		obj_slime.image_index = -1;
		instance_create_layer(obj_slime.x+(-65), obj_slime.y+15, "Instances", obj_slime_normal_attack);
		if (obj_slime.has_sword) {
			instance_create_layer(obj_slime.x+(-115), obj_slime.y+20, "Instances", obj_slime_sword);
			obj_slime_sword.x_adjust = -90;
			obj_slime_sword.y_adjust = 20;
			obj_slime_sword.image_xscale = -1;
			obj_slime_sword.sprite_index = spr_sword;
		}
		obj_slime_normal_attack.x_adjust = -65;
		obj_slime_normal_attack.y_adjust = 15;
		obj_slime_normal_attack.image_xscale = 1;
		obj_slime_normal_attack.sprite_index = spr_slime_normal_attack_horizontal;
		// normal attack object kills itself with create
	} else if (obj_slime.arrow_right) { // Attack right
		obj_slime.slime_attacking = true;
		obj_slime.image_xscale = -1;
		obj_slime.sprite_index = spr_slime_attacking;
		obj_slime.image_index = -1;
		instance_create_layer(obj_slime.x+65, obj_slime.y+15, "Instances", obj_slime_normal_attack);
		if (obj_slime.has_sword) {
			instance_create_layer(obj_slime.x+115, obj_slime.y+20, "Instances", obj_slime_sword);
			obj_slime_sword.x_adjust = 90;
			obj_slime_sword.y_adjust = 20;
			obj_slime_sword.image_xscale = 1;
			obj_slime_sword.sprite_index = spr_sword;
		}
		obj_slime_normal_attack.x_adjust = 65;
		obj_slime_normal_attack.y_adjust = 15;
		obj_slime_normal_attack.image_xscale = -1;
		obj_slime_normal_attack.sprite_index = spr_slime_normal_attack_horizontal;
		// normal attack object kills itself with create
	}
}