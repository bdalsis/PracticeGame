if(global.game_state = GAME_STATE.PLAYING){
	if((y > ystart + travel_dist) || (y < ystart - travel_dist)) {
		dir *= -1;
	}

	y += spd * dir;
	
	//move player when standing on top
	if(place_meeting(x, y - 3, oPlayer)){	//no clue why its y-3 but it fixed a really annoying bug
		oPlayer.y += spd * dir;
	}
}
