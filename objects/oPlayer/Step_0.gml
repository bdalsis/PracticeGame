if(global.game_state = GAME_STATE.PLAYING){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);

	//horizontal movement
	var move = key_right - key_left;
	hsp = move * walk_spd;

	if(place_meeting(x+hsp, y, oWall)){		//check for horizontal collision
		while(!place_meeting(x+move,y,oWall)){
			x += move;
		}
		hsp = 0;
	}

	x += hsp;

	//vertical movement

	vsp += grav;
	if(place_meeting(x, y+1, oWall) && key_jump){		//check for jump
		vsp = -1*jump_hgt;
	}
	
	if(place_meeting(x+1, y, oWall) || place_meeting(x-1, y, oWall)){	//wall friction
		if(vsp > 0){
			vsp -= wall_friction;
		}
	}
	
	if(place_meeting(x, y+vsp, oWall)){		//check for vertical collision
		while(!place_meeting(x, y+sign(vsp), oWall)){
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;


	if(hsp != 0 && vsp == 0){		//particle creation for player
		var spacing_buffer = 2;
		part_particles_create(oParticleSetup.particle_system, x - (move*16), y + oPlayer.sprite_height/2 - spacing_buffer, oParticleSetup.particle_walk, 5);
	}
}
	