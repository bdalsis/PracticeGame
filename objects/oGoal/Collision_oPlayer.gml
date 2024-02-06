if(room == End){
	instance_create_layer(x, y, "End_Screen", oGameEnd);
} else {
	global.room_counter++;
	room_goto_next();
}