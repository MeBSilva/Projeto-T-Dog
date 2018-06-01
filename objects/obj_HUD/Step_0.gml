/// @description Controle do timer
Timer = Timer-delta_time/1000000;
if Timer = 0
{
	Timer = 70;
	show_message("Acabou o Tempo :v");
	slide_trans(TRANS_MODE.RESTARTR);
}
