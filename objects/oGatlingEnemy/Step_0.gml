if(global.game_state == GAME_STATE.PLAYING){
	if(bullet_delay == 0){
		var temp_dir = self.image_angle;
		with (instance_create_layer(x, y, "Bullets", oBullet)){
			speed = 20;
			switch (temp_dir){
				case 90:
					direction = point_direction(x, y, x + 1, y);
				break;
				
				case 180:
					direction = point_direction(x, y, x, y - 1);
				break;
				
				case 270:
					direction = point_direction(x, y, x - 1, y);
				break;
				
				default:
					direction = point_direction(x, y, x, y + 1);
				break;
			}
			image_angle = direction;
		}
		audio_play_sound(snd_shoot, 0, false);	//Shoot_01.wav by LittleRobotSoundFactory -- https://freesound.org/s/270343/ -- License: Attribution 4.0
		bullet_delay = 12;
	} else {
		bullet_delay--;
	}
}




