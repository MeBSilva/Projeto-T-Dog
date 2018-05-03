image_speed = 1;

if (image_index >= 128) room_goto_next();
if (keyboard_check_pressed(vk_escape)) room_goto_next();