/// @description Variavéis que controlam o tamanho do fade-in e fade-out das transições

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h/2;
enum TRANS_MODE 
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1; //Controla a porcentagem da tela que realizará fade
target = room; //"Alvo" do percent e do código de transição (para onde o personagem vai)