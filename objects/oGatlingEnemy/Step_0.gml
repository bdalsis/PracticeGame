if(global.game_state == GAME_STATE.PLAYING){
	if(bullet_delay == 0){
		with (instance_create_layer(x, y, "Bullets", oBullet)){
			speed = 20;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			image_angle = direction;
		}
		bullet_delay = 10;
	} else {
		bullet_delay--;
	}
}




