//Quando o inimigo morre, dar um knockback
if (hp <= 0) {
	with (instance_create_layer(x, y, layer, obj_enemyDeadBiology)) {
			direction = other.hitfrom;
			horizontal_speed = lengthdir_x(3, direction);
			vertical_speed = lengthdir_y(-4, direction) ;
			image_xscale = sign(horizontal_speed);
			if (sign(horizontal_speed != 0)) image_xscale = sign(horizontal_speed);
	}
	
	instance_destroy();
	
}