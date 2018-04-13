//Velocidade do knokback
//Colisão com as paredes

if (done == 0) {
	vertical_speed = vertical_speed + grv;

	//Horizontal Colision
	if(place_meeting(x+horizontal_speed, y, obj_wall)){
		while(!place_meeting(x+sign(horizontal_speed), y, obj_wall)) {
				x = x + sign(horizontal_speed);
		}
		horizontal_speed = 0;
	}
	x = x + horizontal_speed;

	//Vertical Colision
	if(place_meeting(x, y+vertical_speed, obj_wall)) {
		if (vertical_speed > 0) {
			done = 1;
			image_index = 1;
		}
		while (!place_meeting(x, y+vertical_speed, obj_wall)) {
				y = y + sign(vertical_speed);
		}
		vertical_speed = 0;
	}
	y = y + vertical_speed;
}