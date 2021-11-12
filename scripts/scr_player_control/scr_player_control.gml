// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_control(){
//--------------------------------------------- EVERY STEP ---------------------------------------------//
	if (!obj_slime.dead) {
		if (!slime_knocked) {
			if (!slime_dashing) { // Slime is not dashing
				// Movement keys
				key_right = keyboard_check(ord("D"));
				key_up = keyboard_check(ord("W"));
				key_left = keyboard_check(ord("A"));
				key_down = keyboard_check(ord("S"));
				arrow_left = keyboard_check(vk_left);
				arrow_right = keyboard_check(vk_right);
				move_speed = 5;
				// Calculates speed based on key input
				hspeed = move_speed*(key_right - key_left);
				vspeed = move_speed*(key_down - key_up);
				if (hspeed != 0 && vspeed != 0) {
					hspeed *= 1/sqrt(2);
					vspeed *= 1/sqrt(2);
				}

				// Changing the sprite accordingly
				if (!slime_attacking) {
					if (vspeed == 0) {
						if (hspeed == 0) {sprite_index = spr_slime_idle; obj_slime.walk_noise = false;}
						else if (hspeed > 0) {sprite_index = spr_slime_walking; image_xscale = -1; obj_slime.walk_noise = true;}
						else if (hspeed < 0) {sprite_index = spr_slime_walking; image_xscale = 1; obj_slime.walk_noise = true;}
					} else if (vspeed < 0) {
						obj_slime.walk_noise = true;
						if (hspeed == 0) {sprite_index = spr_slime_walking;}
						else if (hspeed > 0) {sprite_index = spr_slime_walking; image_xscale = -1;}
						else if (hspeed < 0) {sprite_index = spr_slime_walking; image_xscale = 1;}
					} else if (vspeed > 0) {
						obj_slime.walk_noise = true;
						if (hspeed == 0) {sprite_index = spr_slime_walking;}
						else if (hspeed > 0) {sprite_index = spr_slime_walking; image_xscale = -1;}
						else if (hspeed < 0) {sprite_index = spr_slime_walking; image_xscale = 1;}
					}
					// Attacks
					scr_slime_attack();
				
				} else { // Slime is attacking
		
				}
	
			} else { // Slime is dashing
		
			}
		}
	}

}