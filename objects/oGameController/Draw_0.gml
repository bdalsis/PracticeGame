draw_set_alpha(alpha);

draw_set_colour(c_black);

draw_rectangle(oPlayer.x - room_width, oPlayer.y - room_height, oPlayer.x + room_width, oPlayer.y + room_height, -1);

draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events

if(alpha != 0){
	var offset = 100;
	draw_set_font(fnt_textbox);
	draw_set_color(c_white);
	draw_text(oPlayer.x, oPlayer.y - offset, "PAUSED");	
}