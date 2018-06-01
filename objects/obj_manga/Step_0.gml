gravity = 0.3;
if place_meeting(x, y, obj_wall){
	instance_destroy(self);	
}
if place_meeting(x, y, obj_player){
	instance_destroy(self);
	audio_play_sound(snd_death, 1, false);
	slide_trans(TRANS_MODE.RESTARTR);
}