/// @description
// You can write your code in this editor
if (walk_noise && !sounding) {
	alarm[2] = 30;
	sounding = true;
}

if (global.cheat_mode) {
	current_health = 100;
	global.normal_attack_damage = 100;
}
