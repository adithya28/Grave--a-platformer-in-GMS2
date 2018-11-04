/// @description Insert description here
// You can write your code in this editor

	
	if(ready_to_die)
	{
	instance_destroy()
	
	
	repeat(experience)
	{
		instance_create_layer(x+random_range(-2,2),y+random_range(-4,4),"Instances",o_exp)
	}
	}

