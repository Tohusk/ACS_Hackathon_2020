/// @description Insert description here
// You can write your code in this editor
x = mouse_x;
y = mouse_y;


if mouse_check_button_pressed(mb_left){
	image_speed=1;
}

if image_index>image_number-1{
	image_index=0;
	image_speed=0;
}