///@arg intensity
///@arg duration

var intensity=argument0
var duration=argument1
if instance_exists(o_camera)
{
	o_camera.screenshake=intensity
	o_camera.alarm[0]=duration
}
