/// @description Damaged
// You can write your code in this editor
invulnerable = false;
landing = true;
sprite_index = spr_ghost_land;
alarm[4] = 25;
var rand = irandom(3);
while (true) {
	if (rand == 3 && !place_meeting(1160+40, 85, obj_ghost)) {
		x = 1160;
		y = 85;
		break;
	} else if (rand == 1 && !place_meeting(1160+40, 605, obj_ghost)) {
		x = 1160;
		y = 605;
		break;
	} else if (rand == 2 && !place_meeting(95-40, 605, obj_ghost)) {
		x = 95;
		y = 605;
		break;
	} else if (rand == 3 && !place_meeting(95-40, 85, obj_ghost)) {
		x = 95;
		y = 85;
		break;
	}
	rand = irandom(3);
}