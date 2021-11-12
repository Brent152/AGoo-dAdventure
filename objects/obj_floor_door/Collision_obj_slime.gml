/// @description
// You can write your code in this editor
if (global.enemies_remaining == 0) {
	global.floor_num += 1;
	global.horizontal_room_num = 5;
	global.vertical_room_num = 5;
	room_goto(global.floor1_map[global.floor_num,global.horizontal_room_num+global.vertical_room_num*10]);
	obj_slime.x = 640;
	obj_slime.y = 310;
	audio_play_sound(snd_door_through, 2, 0);
}