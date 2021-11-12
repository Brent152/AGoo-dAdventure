/// @description Triggers dash
if (!slime_dashing) {
	slime_dashing = true;
	sprite_index = spr_slime_dashing;
	image_index = 0; // First frame
	alarm_set(0, 20); // Stops dash
	vspeed *= .2; // Slows movement
	hspeed *= .2; // before dash
	alarm_set(1, 4); // Starts movement
}
