//Pausar
if (keyboard_check_pressed(vk_escape)){
	if(!pause){
		pause = true;
		instance_deactivate_all(true);
	}else{
		pause = false;
		instance_activate_all();
	}
}
//Ir para o menu
if (pause){
	if (keyboard_check_pressed(ord("M"))){
		room_goto(rm_menu);
	}
}