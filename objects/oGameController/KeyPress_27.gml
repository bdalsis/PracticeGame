/// @description Pause Button

if(global.game_state == GAME_STATE.PLAYING){
	instance_create_layer(pause_text_x, pause_text_y, "", oBullet);
	
	draw_text(350, 670, "PAUSED");	//fix this
	global.game_state = GAME_STATE.PAUSED;
} else if(global.game_state == GAME_STATE.PAUSED){
	global.game_state = GAME_STATE.PLAYING;
}






