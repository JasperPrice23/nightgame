if (timer==0){
	timer=timerstart;
	if (global.text==0){
		minute++;
	}
}
if (minute==60){
	minute=0;
	hour++;
}

timer--;