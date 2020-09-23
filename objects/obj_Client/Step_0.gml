/// @description Insert description here
// You can write your code in this editor

if enable {
	
	if keyboard_check(ord("W")) {
		y -= moveSpeed * delta_time * 0.000001;
	}
	if keyboard_check(ord("S")) {
		y += moveSpeed * delta_time * 0.000001;
	}
	if keyboard_check(ord("A")) {
		x -= moveSpeed * delta_time * 0.000001;
	}
	if keyboard_check(ord("D")) {
		x += moveSpeed * delta_time * 0.000001;
	}

}