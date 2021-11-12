/// @description Insert description here
// You can write your code in this editor
if (!obj_slime.has_sword) {
	if (!invulnerable) {
		obj_blades.current_health -= global.normal_attack_damage;
		hit_cooldown = 1;
		scr_enemy_damaged(id);
		audio_play_sound(snd_skeleton_damaged, 2, 0);
	}
}
