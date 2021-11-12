/// @description Speed up spin
// You can write your code in this editor
show_debug_message("alarm0");
if (summoning) {
	if (spin_index > 0) {
		spin_speed++;
		spin_index--;
		alarm[0] = 5;
	} else {
		sprite_index = spr_blades_summoning;
		alarm[1] = 40;
		move_index = 5;
	}
} else if (yeeting) {
	if (spin_index > 0) {
		spin_speed++;
		spin_index--;
		alarm[0] = 5;
		if (spin_index < 6) {
			sprite_index = spr_blades_yeeting;
		}
	} else {
		hspeed = 1;
		vspeed = 1;
		yeet_index = 20;
		alarm[4] = 300;
		alarm[3] = 1;
	}
}
	