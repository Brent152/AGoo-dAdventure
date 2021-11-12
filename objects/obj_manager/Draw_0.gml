/// @description Health
// You can write your code in this editor
draw_text(45, 10, "HP:");
draw_healthbar(80, 12, obj_slime.max_health+80, 27, obj_slime.current_health, c_gray, c_red, c_lime, 0, false, true);
