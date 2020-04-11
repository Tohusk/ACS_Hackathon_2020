level_pass = 1;

var i;
for (i=0;i<instance_number(obj_npc);i+=1)
{
	if instance_find(obj_npc,i).success == 0
	{
		level_pass = 0;
	}
}

var i;
for (i=0;i<instance_number(obj_npc);i+=1)
{
	if instance_find(obj_npc,i).failure == 1
	{
		level_pass = 0;
		image_index = 1;
		obj_check_level_pass.visible = true;
		room_goto(room0);
	}
}


if room_exists(room_next(room)) && level_pass
{
	if time_until_next_room > 0
	{
		image_index = 0;
		obj_check_level_pass.visible = true;
		time_until_next_room--;
	}
	else
	{
		if room == rm_3
		{
			room_goto(rm_outro);	
		}
		else
		{
			room_goto(room_next(room));	
		}
	}
}
else if !room_exists(room_next(room)) && level_pass
{
	image_index = 0;
	obj_check_level_pass.visible = true;
	room_goto(rm_outro);
}