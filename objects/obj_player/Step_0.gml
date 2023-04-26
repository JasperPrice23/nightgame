xspeed=0;
yspeed=0;

if (keyboard_check(vk_shift)){
	mspeed=6;
}
else {
	mspeed=4;
}

xspeed=mspeed*moving*(-((keyboard_check(ord("A")) || keyboard_check(vk_left))) + ((keyboard_check(ord("D")) || keyboard_check(vk_right))));
yspeed=mspeed*moving*(-((keyboard_check(ord("W")) || keyboard_check(vk_up))) + ((keyboard_check(ord("S")) || keyboard_check(vk_down))));

if (place_meeting(x+xspeed,y,obj_barrier)){
	xspeed=0;
}
if (place_meeting(x,y+yspeed,obj_barrier)){
	yspeed=0;
}

x=x+xspeed;
y=y+yspeed;


//cat

if (cat==1){
	cat=2;
	moving=0;
	//play cat animation
	cattimer=120;
}
else if (cat==2){
	cattimer--;
	if (cattimer==0){
		cat=3;
	}
}

else if (cat==3){
	cat=0;
	moving=1;
}

if (keyboard_check_released(vk_space)) && (place_meeting(x,y,obj_cat)){
	cat=1;
}