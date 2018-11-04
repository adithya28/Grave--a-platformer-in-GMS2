/// @description Insert description here
// You can write your code in this editor


if(instance_exists(o_player))
{
if(o_player.x>200&&o_player.x<room_width-200)
{
x=o_player.x
}
else if(o_player.x>=room_width-200)
{
	x=room_width-200
}
else
{
	x=200
}

y=o_player.y-50
camera_set_view_pos(view_camera[0],x-width/2+random_range(-screenshake,screenshake),y-height/2+random_range(-screenshake,screenshake))
}
//var vm=matrix_build_lookat(o_player.x,o_player.y,,-10,o_player.x,o_player.y,)