/// @description
// You can write your code in this editor
global.time++;
if (!instance_exists(obj_blade_floor)) {
	audio_stop_sound(snd_blades_heartbeat);
}