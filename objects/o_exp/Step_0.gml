/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(o_player))
exit
else
var dir=point_direction(x,y,o_player.x,o_player.y)
var acceleration=0.10
motion_add(dir,acceleration)
