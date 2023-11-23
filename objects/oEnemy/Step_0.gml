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
	
	var spacing_buffer = 2;
	part_particles_create(oParticleSetup.particle_system, x - (dir*16), y + oEnemy.sprite_height/2 - spacing_buffer, oParticleSetup.particle_walk, 1);
}