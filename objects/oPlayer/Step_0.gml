key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
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
if(place_meeting(x, y+1, oWall) && key_jump){
	vsp = -1*jump_hgt;
}

if(place_meeting(x, y+vsp, oWall)){		//check for below collision
	while(!place_meeting(x, y+sign(vsp), oWall)){
		y += sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//check hp
if(hp <= 0 && dead == false){
	sprite_index = sDissolve;
	dead = true;
}