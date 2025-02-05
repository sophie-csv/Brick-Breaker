switch(room)
{
	case rm_start:
		draw_text(8,8, "BRICK BREAKER ");
		break;
	case rm_game:
	case rm_game_2:
	case rm_game_3:
		draw_text(8,8, "Score: " + string(global.player_score));

		draw_set_halign(fa_right);
		draw_text(room_width-8, 8, "High Score: " + string(global.high_score));
		draw_set_halign(fa_left);
		_x = (room_width/2) - ((global.player_lives-1) * 32);
	
		repeat(global.player_lives)
		{
			draw_sprite_ext(spr_bat, 0, _x, room_height-16, .75, .75, 0, c_white, .5);
			_x += 64;
	
		}
		break;
		
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color( room_width/2, 100, "YOU WON!", 3, 3, 0, c, c, c, c, 1 );
		draw_text(room_width/2, 250, "NEW HIGH SCORE: " + string(global.high_score));
		draw_text(room_width/2, 300, "PRESS ENTER TO RESTART");
		draw_set_halign(fa_left);
		break;
			
	case rm_end:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color( room_width/2, 100, "GAME OVER", 3, 3, 0, c, c, c, c, 1 );
		draw_text(room_width/2, 250, "FINAL SCORE: " + string(global.player_score));
		draw_text(room_width/2, 300, "PRESS ENTER TO RESTART ");
		draw_set_halign(fa_left);
		break;

}