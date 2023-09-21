/// @description Pause Button

if(global.game_state == GAME_STATE.PLAYING){
	draw_text(350, 670, "PAUSED");	//fix this
	global.game_state = GAME_STATE.PAUSED;
} else if(global.game_state == GAME_STATE.PAUSED){
	global.game_state = GAME_STATE.PLAYING;
}






