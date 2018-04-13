//Quando o botão for pressionado, criar a "bala", que vai ser uma hitbox
//Toda a parte do ataque melee está no obj_peixeira, isso é só pra criar o ataque propriamente dito

x = obj_player.x;
y = obj_player.y;

if (keyboard_check_pressed(ord("F"))){
	instance_create_layer(x + 15*global.peixeiraOrientation, y, "Bullet", obj_peixeira);
	//show_debug_message()
}