/// @description
// You can write your code in this editor
if (global.enemies_remaining == 0) {
	global.vertical_room_num += 1;
	room_goto(global.floor1_map[global.floor_num,global.horizontal_room_num+global.vertical_room_num*10]);
	obj_slime.x = 640;
	obj_slime.y = 580;
	audio_play_sound(snd_door_through, 2, 0);
	obj_slime.alarm[3] = 3;
	
}