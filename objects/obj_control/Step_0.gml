if(keyboard_check_pressed(vk_enter))
{
	switch(room)
	{
		case rm_start:
			room_goto(rm_game);
			break;
	}
}


if(room==rm_game and instance_number(obj_brick) <= 0)
{
	room_restart();
	if(room == rm_game)
	{
		if(score >= global.high_score){
			room_goto(rm_win);
		}
		if(global.player_lives <= 0){
			room_goto(rm_end);
		}
		if(keyboard_check_pressed(vk_anykey))
		{
			room_restart();
			global.player_score = 0;
			global.player_lives = 3;
		}
	}
}