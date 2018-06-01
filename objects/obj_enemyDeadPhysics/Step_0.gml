vertical_speed = vertical_speed + grv;
//Colisão horizontal;
if place_meeting(x+horizontal_speed, y, obj_wall){
	while (!place_meeting(x+sign(horizontal_speed), y, obj_wall)){
		x = x + sign(horizontal_speed);	
	}
	horizontal_speed = 0;
}
x = x + horizontal_speed;

//Colisão vertical
if place_meeting(x, y+vertical_speed, obj_wall){
	while (!place_meeting(x, y+sign(vertical_speed), obj_wall)){
		y = y + sign(vertical_speed);	
	}
	vertical_speed = 0;
}
y = y + vertical_speed;
