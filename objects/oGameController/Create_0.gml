enum GAME_STATE{
	PLAYING,
	PAUSED,
	GAME_OVER
}

global.game_state = GAME_STATE.PLAYING;
global.respawn_timer = 0.2;
pause_text_x = oCamera.x_to;
pause_text_y = oCamera.y_to;
draw_set_color(c_white);
draw_set_font(-1);