/// @description
// You can write your code in this editor

if (current_health <= 0) {
	instance_destroy();
	scr_roll_trace(x, y);
	global.enemies_remaining--;
	audio_play_sound(snd_ghost_death, 2, 0);
}

if (!invulnerable && !attacking && !landing) {
	sprite_index = spr_ghost_idle;
	if (x < obj_slime.x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	
	if (irandom(25) == 1 && global.time % 3 == 0) {
		attacking = true;
		speed = 0;
		sprite_index = spr_ghost_attack;
		image_index = 0;
		audio_play_sound(snd_ghost_charging, 2, 0);
		alarm[6] = 20;
		alarm[5] = 35;
		alarm[3] = 50;
	}
}
