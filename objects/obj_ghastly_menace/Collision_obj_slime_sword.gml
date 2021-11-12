/// @description Insert description here
// You can write your code in this editor
if (!invulnerable) {
	current_health -= global.normal_attack_damage;
	hit_cooldown = 1;
	scr_enemy_damaged(id);
	audio_play_sound(snd_ghastly_hurt, 2, 0);
	
	
	var vector_x = obj_slime.x - x;
	var vector_y = obj_slime.y - y;
	uvector_x = vector_x/sqrt(power(vector_x, 2) + power(vector_y, 2));
	uvector_y = vector_y/sqrt(power(vector_x, 2) + power(vector_y, 2));
	knocked_index = 6;
	alarm[11] = 1;
}
