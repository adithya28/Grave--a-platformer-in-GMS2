/// @description Insert description here
// You can write your code in this editor
if ( vspeed>1)
{
	vspeed /=-2
	
}
else
{
	vspeed=0
	while(!place_meeting(x,y,o_wall))
	{
		y++
	}
	gravity=0
	friction=1
		
}


	