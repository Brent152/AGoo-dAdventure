/// @description
// You can write your code in this editor

if (current_health <= 0) {
	instance_destroy();
	scr_roll_trace(x, y);
	global.enemies_remaining--;
	audio_stop_sound(snd_sword_charging);
	audio_play_sound(snd_sword_death, 1, 0);
}


if (!invulnerable && !attacking) {
	speed = 0;
	if (irandom(100) == 1) {
		audio_play_sound(snd_sword_charging, 1, 0);
		attacking = true;
		sprite_index = spr_sword_spin;
		spin_charge = 100;
		alarm[4] = 1;
	}
}