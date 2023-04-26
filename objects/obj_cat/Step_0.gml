xspeed=0;
yspeed=0;
if (obj_player.cat==2){
	x=obj_player.x;
	y=obj_player.y;
	alarm[0]=180;
}
else{
	if (behavior==0){
		//cat does nothing
	}
	else if (behavior==1){
		//cat walks left
		x=x-2;
		xspeed = -2;
	}
	else if (behavior==2){
		//cat walks right
		x=x+2;
		xspeed=2;
	}
	else if (behavior==3){
		//cat jumps
		
	}
}
if place_meeting(x+xspeed,y,obj_barrier){
	x=xprevious;
}
