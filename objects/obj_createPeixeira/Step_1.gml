//Quando o botão for pressionado, criar a "bala", que vai ser uma hitbox
//Toda a parte do ataque melee está no obj_peixeira, isso é só pra criar o ataque propriamente dito

x = obj_player.x;
y = obj_player.y;

hitting_rate += 1;
if (keyboard_check_pressed(vk_space)) and (hitting_rate >= 15){
	instance_create_layer(x + 15*global.peixeiraOrientation, y, "Bullet", obj_peixeira);
	hitting_rate = 0;
	audio_play_sound(snd_peixeira, 2, false);
}