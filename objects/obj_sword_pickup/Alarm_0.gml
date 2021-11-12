/// @description Move down
// You can write your code in this editor
if (!pickedup) {
	if (index > 0) {
		y++;
		index--;
		alarm[0] = 4;
	} else {
		alarm[1] = 4;
	}
}
