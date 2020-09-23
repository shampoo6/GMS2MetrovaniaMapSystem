// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gms2MMSTriggerIn(_room){
	with(obj_GMS2MMSController) {
		if currentRoom == noone {
			currentRoom = _room;
			camera.bound = _room;
			return;
		}
		
		// 查看当前房间是不是就是这个触发房间
		if currentRoom == _room {
			show_debug_message("当前房间与触发房间相同，id：" + string(_room.id));
			return;
		}
		
		if beforeRoomOut {
			script_execute(beforeRoomOut);
		}
		
		gms2CameraStopFollow(camera);
		
		// 计算相机移动的目的地
		var _x = clamp(target.x, _room.x + camera.halfWidth, _room.x + _room.sprite_width - camera.halfWidth);
		var _y = clamp(target.y, _room.y + camera.halfHeight, _room.y + _room.sprite_height - camera.halfHeight);
		
		eX = _x;
		eY = _y;
		//gms2CameraMove(camera, _x, _y, cameraMoveSpeed, true);
		
		nextRoom = _room;
		
		// 下一帧开始相机移动
		alarm[0] = 1;
		
		show_debug_message("gms2MMSTriggerIn");
		show_debug_message(string(_room));
	}
}