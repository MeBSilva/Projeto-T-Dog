x = obj_player.x;
y = obj_player.y;

//Mira
cursor_sprite = spr_aim;
window_set_cursor(cr_none);
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Criação do tiro
firing_rate += 1;
recoil = max(0, recoil - 1);
if (mouse_check_button_released(mb_left)) and (firing_rate >= 15){
		recoil = 4;
		firing_rate = 0;
		with (instance_create_layer(x, y, "Bullet", obj_bullet)) {
			speed = 25;
			direction = other.image_angle;
			image_angle = direction;
			audio_play_sound(snd_gun, 1, false);
		}
}

//Recoil
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

//Arma virada pra direita/esquerda
if (image_angle > 90) and (image_angle < 270) {
	image_yscale = -1;
}
else {
	image_yscale = 1;	
}
