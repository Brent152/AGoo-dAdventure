/// @description Insert description here
// You can write your code in this editor
if (!obj_slime.invulnerable) {
	obj_slime.current_health -= 10;
	if (!obj_slime.slime_knocked) {
		scr_slime_knocked(id);
	}
	scr_slime_damaged();
	instance_destroy();
}