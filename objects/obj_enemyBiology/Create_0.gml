vertical_speed = 0;
grv = 0.3
walk_speed = 5;
horizontal_speed = walk_speed;
dir = 0;
hp = 2;
hitfrom = 0;


//Chase config
enum e_state 
{
	idle ,
	chase 
}

state = e_state.idle;