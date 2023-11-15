draw_set_alpha(alpha);
draw_set_font(fnt_textbox);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_text(x, y, text);

draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events