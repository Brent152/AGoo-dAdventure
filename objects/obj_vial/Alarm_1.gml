/// @description Move up
// You can write your code in this editor
if (!pickedup) {
	if (index < 12) {
		y--;
		index++;
		alarm[1] = 4;
	} else {
		alarm[0] = 4;
	}
}