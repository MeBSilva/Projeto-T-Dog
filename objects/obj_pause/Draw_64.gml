if (pause) {
	//Tela cinza
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, room_width, room_height, false);
	//Textos
	draw_set_font(fPause);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]+50)/2, (view_hport[0] -300)/2, "Jogo Pausado");
	draw_set_font(fPauseOptions);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]+250)/2, (view_hport[0]+100)/2, "Para Continuar, Pressione Esc");
	draw_set_font(fPauseOptions);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]+300)/2, (view_hport[0] + 350)/2, "Para Voltar ao Menu, Pressione M");
}