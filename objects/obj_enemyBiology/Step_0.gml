vertical_speed = vertical_speed + grv;

//BASICAMENTE O MESMO CÓDIGO DO JOGADOR

//Horizontal Colision
if(place_meeting(x+horizontal_speed, y, obj_wall)){
		while(!place_meeting(x+sign(horizontal_speed), y, obj_wall)) {
				x = x + sign(horizontal_speed);
		}
		horizontal_speed = -horizontal_speed;
}
x = x + horizontal_speed;

//Vertical Colision
if(place_meeting(x, y+vertical_speed, obj_wall)) {
		while (!place_meeting(x, y+vertical_speed, obj_wall)) {
				y = y + sign(vertical_speed);
		}
		vertical_speed = 0;
}
y = y + vertical_speed;

///Animation
//Running
image_speed = 1;
if (horizontal_speed = 0) sprite_index = spr_enemyBiology;
else sprite_index = spr_enemyBiologyRun;

//Facing Right and Left
if(horizontal_speed != 0) image_xscale = sign(-horizontal_speed);

//Enemy Collision
if (place_meeting(x,y,obj_player))
{
	if (obj_player.y < y-16)
	{
	}
	else
	{
		slide_trans(TRANS_MODE.RESTARTR);
	}
}

//Chase
switch (state)
{
	case e_state.idle:
	{
		horizontal_speed = 0;
		vertical_speed = (min(7, vertical_speed+0.05));
		if (distance_to_object(obj_player) < 512) and (!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true)) state = e_state.chase;
		
	}
	break;
	case e_state.chase:
	{
		dir = sign(obj_player.x - x);
		horizontal_speed = dir *3;
		vertical_speed = (min(7,vertical_speed+0.05));
		if (distance_to_object(obj_player) > 1000) or (collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, true)) state = e_state.idle;
	}
	break;
}







