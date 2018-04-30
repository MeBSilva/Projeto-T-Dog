//Velocidade das sprites
image_speed = 1;

//Finalizar a cutscene
if (image_index >= 89){
	room_goto_next();
}

//Passar a cutscene
if (keyboard_check(vk_escape)){
	room_goto_next();	
}