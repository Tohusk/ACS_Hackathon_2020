/// @description Insert description here
// You can write your code in this editor

switch(menu_index) {
	case 0:
		room_goto(rm_washinggame);
		break;
	case 1:
		room_goto(flappy_hand_room);
		break;
	case 2:
		room_goto(rm_home_menu);
		break;
	case 3:
		room_goto(rm_1);
		break;	
	case 5:
		game_end();
		break;
}