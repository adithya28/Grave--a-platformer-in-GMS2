/// @description Insert description here
// You can write your code in this editor
if(health<=0)
{
	
	instance_destroy()
	
	repeat(experience)
	{
		instance_create_layer(x+random_range(-2,2),y+random_range(-4,4),"Instances",o_exp)
	}
}
