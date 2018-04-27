/// @description Teste de Colisao

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