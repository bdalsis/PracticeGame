if(global.game_state == GAME_STATE.PLAYING){
	if(bullet_delay == 0){
		with (instance_create_layer(x, y, "Bullets", oBullet)){
			speed = 7;
			direction = point_direction(x, y, oPlayer.x, oPlayer.y);
			image_angle = direction;
		}
		audio_play_sound(snd_shoot, 0, false);  //Shoot_01.wav by LittleRobotSoundFactory -- https://freesound.org/s/270343/ -- License: Attribution 4.0
		bullet_delay = 65;
	} else {
		bullet_delay--;
	}
}




