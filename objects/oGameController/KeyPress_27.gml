/// @description Pause Button

if(global.game_state == GAME_STATE.PLAYING){
	alpha = 0.7;
	global.game_state = GAME_STATE.PAUSED;
} else if(global.game_state == GAME_STATE.PAUSED){
	alpha = 0;
	global.game_state = GAME_STATE.PLAYING;
}






