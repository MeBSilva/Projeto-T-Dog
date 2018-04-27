/// @description AutoSave

//Sobrescrever saves antigos
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Criar novo save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);