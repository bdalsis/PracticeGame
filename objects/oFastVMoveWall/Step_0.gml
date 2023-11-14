if(global.game_state = GAME_STATE.PLAYING){
	if((y > ystart + travel_dist) || (y < ystart - travel_dist)) {
		dir *= -1;
	}

	y += spd * dir;

	//move player when standing on top
	if(place_meeting(x, y-4, oPlayer)){		//no clue why its y-4 but it fixed a really annoying bug
		oPlayer.y += spd * dir;
	}
}