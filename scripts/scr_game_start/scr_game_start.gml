// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_game_start(){
	global.time = 0;
	global.enemies_remaining = 0;
	global.current_floor = 1;
	
	if (global.cheat_mode) {
		global.normal_attack_damage = 100;
	} else {
		global.normal_attack_damage = 10;
	}

	
	
	// Initialize map arrays
	
	// First room index
	global.floor_num = 1;
	global.horizontal_room_num = 5;
	global.vertical_room_num = 5;
	
	// map[floor][horiz, vert]
	global.floor1_map[1,5+5*10] = _1_0_0_;
	global.floor1_map[1,5+6*10] = _1_0_1_;
	global.floor1_map[1,5+7*10] = _1_0_2_;
	global.floor1_map[1,5+4*10] = _1_0_n1_;
	global.floor1_map[1,5+3*10] = _1_0_n2_;
	global.floor1_map[1,6+5*10] = _1_1_0_;
	global.floor1_map[1,6+6*10] = _1_1_1_;
	global.floor1_map[1,6+7*10] = _1_1_2_;
	global.floor1_map[1,6+4*10] = _1_1_n1_;
	global.floor1_map[1,6+3*10] = _1_1_n2_;
	global.floor1_map[1,7+6*10] = _1_2_1_;
	global.floor1_map[1,7+3*10] = _1_2_n2_;
	global.floor1_map[1,8+3*10] = _1_3_n2_;
	global.floor1_map[1,4+5*10] = _1_n1_0_;
	global.floor1_map[1,4+7*10] = _1_n1_2_;
	global.floor1_map[1,3+5*10] = _1_n2_0_;
	global.floor1_map[1,3+7*10] = _1_n2_2_;
	global.floor1_map[1,3+8*10] = _1_n2_3_;
	global.floor1_map[1,3+9*10] = _1_n2_4_;
	global.floor1_map[1,3+4*10] = _1_n2_n1_;
	global.floor1_map[1,2+5*10] = _1_n3_0_;
	
	global.floor1_map[2,5+5*10] = _2_0_0_;
	global.floor1_map[2,5+6*10] = _2_0_1_;
	global.floor1_map[2,6+5*10] = _2_1_0_;
	global.floor1_map[2,7+5*10] = _2_2_0_;
	global.floor1_map[2,7+6*10] = _2_2_1_;
	global.floor1_map[2,7+4*10] = _2_2_n1_;
	global.floor1_map[2,7+3*10] = _2_2_n2_;
	global.floor1_map[2,8+6*10] = _2_3_1_;
	global.floor1_map[2,4+5*10] = _2_n1_0_;
	global.floor1_map[2,4+4*10] = _2_n1_n1_;
	global.floor1_map[2,3+5*10] = _2_n2_0_;
	global.floor1_map[2,3+6*10] = _2_n2_1_;
	global.floor1_map[2,3+4*10] = _2_n2_n1_;
	
	global.floor1_map[3,5+5*10] = room_win;
	
	room_goto(global.floor1_map[global.floor_num,global.horizontal_room_num+global.vertical_room_num*10]);
	
	
}