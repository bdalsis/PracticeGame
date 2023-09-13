//find the player location
if(instance_exists(follow)){
	x_to = oPlayer.x;
	y_to = oPlayer.y;
}

//update cam pos
x += (x_to - x) / cam_spd_buffer;
y += (y_to - y) / cam_spd_buffer;

//update camera view
camera_set_view_pos(cam, x - cam_h_width, y - cam_h_height);



