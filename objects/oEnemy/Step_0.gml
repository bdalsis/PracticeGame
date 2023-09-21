if(global.game_state = GAME_STATE.PLAYING){
	//horizontal movement

	if((x > xstart + travel_dist) || (x < xstart - travel_dist)) {
		dir *= -1;
	}
	
	if(place_meeting(x+walk_spd*dir, y, oWall)){		//check for horizontal collision
		while(!place_meeting(x+dir,y,oWall)){
			x += dir;
		}
		dir *= -1;
	}

	x += walk_spd * dir;
}