/// @description Keep in room
// You can write your code in this editor

if (!summoning && !yeeting && !attacking) {
	if (x < 120) {
		x = 120;
	} else if ( x > (1280 - 120)) {
		x = 1280 - 120;
	}
	if (y < 100) {
		y = 100;
	} else if ( y > (720 - 150)) {
		y = 720-150;
	}
}
if (yeeting && !leave_room) {
	if (x < 120) {
		hspeed = hspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	} else if ( x > (1280 - 120)) {
		hspeed = hspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	}
	if (y < 100) {
		vspeed = vspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	} else if ( y > (720 - 150)) {
		vspeed = vspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	}
}
if (leave_room) {
	if (x < 120) {
		hspeed = hspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	} else if ( x > (1280 - 120)) {
		hspeed = hspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	}
	if (y < -300) {
		leave_room = false;
		yeeting = false;
		vspeed = 5;
		hspeed = 0;
		x = 640;
		y = -500;
		coming_back = true;
	} else if ( y > (720 - 150)) {
		vspeed = vspeed*-1;
		audio_play_sound(snd_blades_hit_wall, 2, 0);
	}
}