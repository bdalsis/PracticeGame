enum GAME_STATE{
	PLAYING,
	PAUSED
}

global.game_state = GAME_STATE.PLAYING;
global.respawn_timer = 0.2;
global.death_counter = 0;
global.room_counter = 1;
minutes = 0;
sec = 0;
pause_text_x = oCamera.x_to;
pause_text_y = oCamera.y_to;
alpha = 0;
