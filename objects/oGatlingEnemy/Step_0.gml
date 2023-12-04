if(global.game_state == GAME_STATE.PLAYING){
	if(bullet_delay == 0){
		var temp_dir = self.direction;
		with (instance_create_layer(x, y, "Bullets", oBullet)){
			speed = 20;
			direction = point_direction(x, y, x, y + 1);
			image_angle = direction;
		}
		bullet_delay = 10;
	} else {
		bullet_delay--;
	}
}




