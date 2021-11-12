/// @description Insert description here
// You can write your code in this editor

if (current_health <= 0) {
	instance_destroy();
	global.enemies_remaining--;
	instance_create_layer(640, 310, "Instances", obj_vial);
	audio_stop_sound(snd_music_boss);
	audio_play_sound(snd_music_normal, 0, 1);
}

if (coming_back) {
	if (y > 150) {
		vspeed = 0;
		spin_speed = 3;
		yeeting = false;
		attacking = false;
		summoning = false;
		coming_back = false;
		audio_stop_sound(snd_blades_whoosh);
		audio_stop_sound(snd_blades_looming);
	}
}

if (!attacking) {
	sprite_index = spr_blades_idle;
}

image_angle += spin_speed;

// Attacks
if (global.time % 4 == 0 && irandom(50) == 1 && !attacking && !summoning) {
	audio_play_sound(snd_blades_charge, 2, 0);
	summoning = true;
	attacking = true;
	spin_index = 5;
	alarm[0] = 1;
} else if (global.time % 5 == 0 && irandom(100) == 1 && !attacking && !summoning && !yeeting) {
	audio_play_sound(snd_blades_whoosh, 2, 1);
	yeeting = true;
	attacking = true;
	spin_index = 12;
	alarm[0] = 1;
}