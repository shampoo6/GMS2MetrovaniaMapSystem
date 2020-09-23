// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gms2MMSTriggerCameraMoveDone(payload){
	currentRoom = nextRoom;
	nextRoom = noone;
	camera.bound = currentRoom;
	gms2CameraFollow(camera, target);
	if afterRoomIn {
		script_execute(afterRoomIn);
	}
}