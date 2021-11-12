// Keep slime in room bounds
if (x < 80) {
	x = 80;
} else if ( x > (1280 - 80)) {
	x = 1280 - 80;
}
if (y < 50) {
	y = 50;
} else if ( y > (720 - 100)) {
	y = 720-100;
}

// Check if dead
if (current_health <= 0 && !dead) {
	dead = true;
	image_index = 0;
	sprite_index = spr_slime_dead;
	alarm[10] = 30;
	speed = 0;
	audio_stop_sound(snd_music_normal);
	audio_stop_sound(snd_music_boss);
}

scr_player_control();
