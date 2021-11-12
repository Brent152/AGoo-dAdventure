if (!invulnerable) {
	image_index = 0;
	sprite_index = spr_ghost_damaged;
	current_health -= global.normal_attack_damage;
	scr_enemy_knocked(id);
	invulnerable = true;
	attacking = false;
	alarm[9] = 68;
	alarm[7] = 35;
	audio_play_sound(snd_ghost_damaged, 2, 0);;
}