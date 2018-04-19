//Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));
key_smaller_jump = keyboard_check_released(vk_space) or keyboard_check_released(ord("W"));

horizontal_speed = 0;
vertical_speed = 0;
grv = 0.5; //gravidade
walk_speed = 5;
has_control = true

if (global.checkpointR == room)
{
	x = global.checkpointx;
	y = global.checkpointy;
}