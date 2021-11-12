/// @description Insert description here
// You can write your code in this editor
global.enemies_remaining += 1;
invulnerable = false;
knocked = false;
charging = false;
if (global.current_floor == 1) {
	max_health = 50;
	current_health = 50;
}
