behavior=irandom(3);

if (behavior==0){
	//cat does nothing
	
	alarm[0]=random_range(120,600);
}
else if (behavior==1){
	//cat walks left
	alarm[0]=random_range(30,180);
}
else if (behavior==2){
	//cat walks right
	alarm[0]=random_range(30,180);
}
else if (behavior==3){
	//cat jumps
	alarm[0]=180;
}
else if (behavior==4){
	//cat sleeps
	alarm[0]=random_range(600,2400);
}
else if (behavior==5){
	//cat sits
	alarm[0]=random_range(600,1200);
}