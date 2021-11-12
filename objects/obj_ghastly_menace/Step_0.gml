/// @description Insert description here
// You can write your code in this editor

if (fire_alive) {
	if (!audio_is_playing(snd_fire_crackle)) {
		audio_play_sound(snd_fire_crackle, 0, 1);
	}
}

if (current_health <= 0) {
	instance_destroy(obj_fire);
	instance_destroy(obj_fireball);
	instance_destroy(obj_scatter_shot);
	instance_destroy(obj_scatter_piece);
	instance_create_layer(x, y, "Instances", obj_ghastly_dead);
	instance_destroy();
	global.enemies_remaining--;
}

if (fireballing || enforcing) {
	hspeed = 0;
	vspeed = 0;
} else {
	if (irandom(10) != 1) {
		if (global.time % 10 == 0) {
			if (irandom(2) == 1) {
				hspeed = 1;
			} else {
				hspeed = -1;
			}
		}
		if (global.time % 4 == 0) {
			if (irandom(2) == 1) {
				vspeed = 1;
			} else {
				vspeed = -1;
			}
		}
	} else {
		if (obj_slime.x > x) {
			hspeed = 1;
		} else {
			hspeed = -1;
		}
		if (obj_slime.y > y) {
			vspeed = 1;
		} else {
			vspeed = -1;
		}
	}
}

if (obj_slime.x > x) {
	image_xscale = -1;
} else {
	image_xscale = 1;
}

// Attacks
if (global.time % 3 == 0 && irandom(50) == 1 && !attacking && !scattershotting) {
	// Cast scatter shot
	attacking = true;
	sprite_index = spr_ghastly_scattershot;
	image_index = 0;
	alarm[5] = 15;
	alarm[1] = 70;
} else if (global.time % 4 == 0 && irandom(50) == 2 && !attacking && !fireballing) {
	fireball_index = 0;
	fireballing = true;
	attacking = true;
	sprite_index = spr_ghastly_fire;
	image_index = 0;
	alarm[7] = 45;
	alarm[2] = 65;
} else if (global.time % 4 == 0 && irandom(50) == 3 && !attacking && !enforced) {
	attacking = true;
	enforcing = true;
	sprite_index = spr_ghastly_enforcements;
	image_index = 0;
	alarm[6] = 25;
	alarm[3] = 75;
}