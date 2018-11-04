/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(other))
exit
else
var dir=point_direction(other.x,other.y,x,y)
var acceleration=0.5
motion_add(dir,acceleration)
