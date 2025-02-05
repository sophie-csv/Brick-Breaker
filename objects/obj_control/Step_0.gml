if(keyboard_check_pressed(vk_enter))
{
	switch(room)
	{
		case rm_start:
			if (rm == 1)
			{
				room_goto(rm_game);
			}
			else if (rm == 2)
			{
				room_goto(rm_game_2);
			}
			else if (rm == 3)
			{
				room_goto(rm_game_3);
			}
			
			break;
		case rm_win:
		case rm_end:	
			room_goto(rm_start);
			global.player_score = 0;
			global.player_lives = 3;
		
	}
}

// instance_number(obj_brick) <= 0)

if(room==rm_game and global.player_lives <= 0)
{
	if(score >= global.high_score)
	{
		room_goto(rm_win);
	}
	else
	{
		room_goto(rm_end);
	}
}