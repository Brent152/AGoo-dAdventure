/// @description
// You can write your code in this editor

if (current_health <= 0) {
	instance_destroy();
	scr_roll_trace(x, y);
	global.enemies_remaining--;
}

// Walk
if (!invulnerable && !attacking) {
	sprite_index = spr_skeleton_idle;
	if (x < obj_slime.x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}
	direction = point_direction(x, y, obj_slime.x, obj_slime.y);
	speed = -.2;
	if (irandom(10) == 1) {
		alarm[2] = 60;
		attacking = true;
	}
}
