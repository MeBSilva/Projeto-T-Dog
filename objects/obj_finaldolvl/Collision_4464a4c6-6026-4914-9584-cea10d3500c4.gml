/// @description Move to next area

with(obj_player){
	if(has_control)
	{
		has_control = false;
		slide_trans(TRANS_MODE.GOTO,other.target)
	}
	
}