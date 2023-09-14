if(global.game_state = GAME_STATE.PLAYING){
	if((x > xstart + travel_dist) || (x < xstart - travel_dist)) {
		dir *= -1;
	}

	x += spd * dir;

	//move player when standing on top
	if(place_meeting(x, y-1, oPlayer)){
		oPlayer.x += spd * dir;
	}
}