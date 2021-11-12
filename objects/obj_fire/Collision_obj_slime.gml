/// @description Insert description here
// You can write your code in this editor
if (!obj_slime.invulnerable && !obj_slime.slime_dashing) {
	obj_slime.current_health -= 10;
	scr_slime_damaged();
	if (!obj_slime.slime_knocked) {
		scr_slime_knocked(id);
	}
}