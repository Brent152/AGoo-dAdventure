/// @description
// You can write your code in this editor
global.enemies_remaining += 1;
invulnerable = false;
knocked = false;
sounding = false;
attacking = false;
spin_charge = 0;
if (global.current_floor == 1) {
	max_health = 30;
	current_health = 30;
}
