if (pause) {
	//Debug HUD sob
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	//Tela cinza
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, room_width, room_height, false);
	//Textos
	draw_set_font(fPause);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]-300)/2, (view_hport[0] -500)/2, "Jogo Pausado");
	draw_set_font(fPauseOptions);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]-300)/2, (view_hport[0]-100)/2, "Para Continuar, Pressione Esc");
	draw_set_font(fPauseOptions);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((view_wport[0]-250)/2, (view_hport[0] + 150)/2, "Para Voltar ao Menu, Pressione M");
}