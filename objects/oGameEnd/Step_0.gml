if alpha < 1 {
   alpha += fade_factor/fade_time; // alpha will reach 1 at set fade time
   fade_factor = 0.05 + fade_factor;
} else {
	if(!exists){
		exists = true;
		instance_create_layer(oPlayer.x - x_offset, oPlayer.y - y_offset, "End_Text", oEndText);
		alarm[0] = room_speed * 5;
	}
}