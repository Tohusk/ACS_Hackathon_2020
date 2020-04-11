/// @description Insert description here
// You can write your code in this editor
/*
if (keyboard_check(vk_right)) x = x + 4;
if (keyboard_check(vk_left)) x = x - 4;
if (keyboard_check(vk_up)) y = y - 4;
if (keyboard_check(vk_down)) y = y + 4;
*/ 
x=clamp(x, 0, room_width);
y=clamp(y, 0, room_height);

if (y>768) {
	instance_destroy();
}

vspeed+= 1.5;
if (keyboard_check(vk_space)&&cooldown<1) {
	vspeed=0;
	direction = point_direction(x,y, x, y-15);
	speed = 20;
	cooldown = 16;             
	
}
cooldown--;
// image_angle = point_direction(x,y, x, );

/*
if (mouse_check_button(mb_left)) {
	instance_create_layer(x, y, layer, obj_bullet);	
}
*/
timer--;
if (timer<0) {
	instance_create_depth(1200, 768, 0, obj_obstacle_bot);
	instance_create_depth(1200, 0, 0, obj_obstacle_top);
	timer = 120;
}