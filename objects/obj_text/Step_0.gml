/// @description Progress Text

letters += spd;
text_current = string_copy(text, 0, floor(letters));

draw_set_font(fPlaca);
if (h == 0 ) h = string_height(text);
w = string_width(text_current);

//Destruir quando acabar
if (letters >= lenght) and (keyboard_check_pressed(vk_anykey)){
	instance_destroy()
	with (obj_camera) follow = obj_player;
	with (obj_player) has_control = true;
}