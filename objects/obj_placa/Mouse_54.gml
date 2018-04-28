if (point_in_circle(obj_player.x, obj_player.y, x, y, 64)) and (!instance_exists(obj_text)){
	with (instance_create_layer(x, y-64, layer, obj_text)){
		text = other.text;
		lenght = string_length(text);
	}
	with (obj_camera){
		follow = other.id;	
	}
}