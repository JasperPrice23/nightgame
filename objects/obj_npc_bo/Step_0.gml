if (place_meeting(x,y,obj_player)) && (line=1) && (keyboard_check_released(vk_space)){
	global.text=1;
	global.textline="This is a test message, have a good day. :) ";
	line=2;
	obj_player.moving=0;
}
else if (place_meeting(x,y,obj_player)) && (line=2) && (keyboard_check_released(vk_space)){
	global.text=0;
	line=1;
	obj_player.moving=1;
}