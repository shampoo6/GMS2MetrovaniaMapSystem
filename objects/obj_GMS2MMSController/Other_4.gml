/// @description Insert description here
// You can write your code in this editor

rooms = array_create(instance_number(obj_GMS2MMSRoom));

camera.target = target;

// 查询所有 obj_GMS2MMSRoom 对象实例
for (var i = 0; i < instance_number(obj_GMS2MMSRoom); ++i;) {
	rooms[i] = instance_find(obj_GMS2MMSRoom, i);
}

for (var i = 0; i < instance_number(obj_GMS2MMSRoom); ++i;) {
	var ins = array_get(rooms, i);
	// 设置目标
	ins.target = target;
	// 设置触发模式
	ins.mode = TriggerMode.Point;
	// 设置触发事件
	ins.onTriggerIn = gms2MMSTriggerIn;
	// 注册事件
	gms2TriggerRegisterEvent(ins);
	show_debug_message(ins);
}

show_debug_message("查询room结束");