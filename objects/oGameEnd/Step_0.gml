if alpha < 1 {
   alpha += 1/fadeTime; // alpha will reach 1 at set fade time
} else {
	if(!exists){
		exists = true;
		instance_create_layer(oPlayer.x - x_offset, oPlayer.y - y_offset, "End_Text", oEndText);
		alarm[0] = room_speed * 5;
	}
}