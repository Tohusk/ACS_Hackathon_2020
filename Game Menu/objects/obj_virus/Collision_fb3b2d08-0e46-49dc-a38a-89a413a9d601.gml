/// @description Insert description here
// You can write your code in this editor

frames += 1;

if ((frames % 60) == 0){
	chance = random(1);
	if (chance > 0.79){
		if (instance_number(obj_virus) = 1){
			obj_instructions.visible = false;
			obj_win.visible = true;
			room_goto(rm_outro);
		}
		instance_destroy();	
	}
	
	if (frames > 5 * 60){
		if (instance_number(obj_virus) = 1){
			obj_instructions.visible = false;
			obj_win.visible = true;
			room_goto(rm_outro);
		}
		instance_destroy();	
	}
}
