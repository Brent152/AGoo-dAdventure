/// @description Insert description here
// You can write your code in this editor
if (!obj_slime.has_sword) {
	if (!invulnerable) {
		current_health -= global.normal_attack_damage;
		hit_cooldown = 1;
		scr_enemy_knocked(id);
		scr_enemy_damaged(id);
		charging = false;
		audio_play_sound(snd_book_damaged, 1, 0);
	}
}