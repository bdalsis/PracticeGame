if(bullet_delay == 0){
	with (instance_create_layer(x, y, "Bullets", oBullet)){
		speed = 5;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y);
		image_angle = direction;
	}
	bullet_delay = 50;
} else {
	bullet_delay--;
}




