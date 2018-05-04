if (morto){
	morto = false;
	vidas -= 1;
	if (vidas = 0){
		show_message("IH, CABOU AS VIDA :(");
		slide_trans(TRANS_MODE.RESTART);
	}
}