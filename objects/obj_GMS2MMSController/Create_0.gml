/// @description Insert description here
// You can write your code in this editor

// 所有房间数组
rooms = noone;

// 当前房间
currentRoom = noone;

// 下一个房间
nextRoom = noone;

// 注册相机事件
eventInfo = new EventInfo(id, gms2MMSTriggerCameraMoveDone);
gms2ESAddEventListener("CameraMoveDone", eventInfo);

// 相机预期目的地
eX = 0;
eY = 0;