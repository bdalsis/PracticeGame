if(room == End){
	instance_create_layer(x, y, "End_Screen", oGameEnd);
} else {
	room_goto_next();
}