/// @description Insert description here
// You can write your code in this editor
draw_healthbar(x-max_health/2, y+65, x+max_health/2, y+50, current_health, c_gray, c_red, c_lime, 0, false, true);

if (current_health <= 0) {
	instance_destroy();
	scr_roll_trace(x, y);
	global.enemies_remaining--;
	audio_play_sound(snd_book_death, 2, 0);
}

// Walk
if (!invulnerable) {
	sprite_index = spr_book;
	if (x < obj_slime.x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	direction = point_direction(x, y, obj_slime.x, obj_slime.y);
	speed = -.2;
} else {
	sprite_index = spr_book_damaged;
	speed = 0;
}

if (!charging && irandom(60) == 1) {
	charging = true;
	alarm[1] = 100;
	alarm[0] = 125;
}