/// @description Insert description here
// You can write your code in this editor
var scale = 3;
var viewWidth = camera.viewWidth;
var viewHeight = camera.viewHeight;

window_set_size(viewWidth * scale, viewHeight * scale);
surface_resize(application_surface, viewWidth * scale, viewHeight * scale);

alarm[0] = 1;