/// @description Teste de Colisao
// You can write your code in this editor

if (place_meeting(x,y,obj_player))
{
	global.checkpoint = id;
	global.checkpointx = x; 
	global.checkpointy = y;
	global.checkpointR = room;
    instance_destroy(); 

}

if (global.checkpointR == room)
{
}