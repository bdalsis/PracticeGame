if(global.game_state = GAME_STATE.PLAYING){
	if((y > ystart + travel_dist) || (y < ystart - travel_dist)) {
		dir *= -1;
	}

	y += spd * dir;
	
	//move player when standing on top
	if(place_meeting(x, y-1, oPlayer)){
		oPlayer.y += spd*dir;
	}
}