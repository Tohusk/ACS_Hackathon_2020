/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)){
	if (sprite_index == sportsAloneS){
		sprite_index = sportsAloneKS
	}
	alarm[0] = 60;
	youLoseO.visible = true
}