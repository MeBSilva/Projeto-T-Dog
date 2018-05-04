/// @description Hudzão desse, bixo
//Vidas
draw_set_font(fHUD);
draw_set_color(c_red);
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(20, 30, "Vidas Restantes: " + string(vidas));
//Timer
draw_set_font(fHUD);
draw_set_color(c_red);
draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text(950, 30, "" + string(Timer));

