//Get Player Input
if(has_control)
{
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));
	key_smaller_jump = keyboard_check_released(vk_space) or keyboard_check_released(ord("W"));
}
else
{
	key_left = 0
	key_right = 0
	key_jump = 0
	key_smaller_jump = 0
}	
global.peixeiraOrientation = image_xscale;

//Calcular o movimento
//var é uma variável temporária
var move = key_right - key_left;

horizontal_speed = move * walk_speed;
vertical_speed = vertical_speed + grv;

//Pulo dependendo se o jogador aperta ou segura o botão de espaço
if(place_meeting(x,y+1,obj_wall)) and (key_jump) vertical_speed = -10;

if((key_smaller_jump) and vertical_speed < 0) vertical_speed = -4;

//Colisão horizontal
if(place_meeting(x+horizontal_speed, y, obj_wall)){
		while(!place_meeting(x+sign(horizontal_speed), y, obj_wall)) {
				x = x + sign(horizontal_speed);
		}
		horizontal_speed = 0;
}
x = x + horizontal_speed;

//Colisão vertical
if(place_meeting(x, y+vertical_speed, obj_wall)){
		while(!place_meeting(x, y+vertical_speed, obj_wall)) {
				y = y + sign(vertical_speed);
		}
		vertical_speed = 0;
}
y = y + vertical_speed;

//Animação
///Pulo
if(!place_meeting(x,y+1,obj_wall)) { //Se não está no chão
		sprite_index = spr_playerJump;
		image_speed = 0;
		if(sign(vertical_speed) > 0) image_index = 1; else image_index = 0;			
}
///Correr
else {
	image_speed = 1;
	if(horizontal_speed == 0) sprite_index = spr_player; //Se está parado
	else sprite_index = spr_playerRun;
}
///Olhar para esquerda e direita
if (key_left) image_xscale = -1;
if (key_right) image_xscale = 1;
