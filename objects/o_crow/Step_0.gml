/// @description Insert description here
// You can write your code in this editor


if(health<=0)
{
	ready_to_die=true
instance_create_layer(x,y-16,"instances",o_feathers)
}
if(image_xscale==0)
		image_xscale=1


if(state!="fly")
{
if instance_exists(o_player)	
image_xscale=sign(o_player.x-x)
if(object_proximity(0,100,o_player))
{
	state="move"
	
}
else {
	//target_lock=false
	state="idle"
	}
}

switch(state)
{
	case "move":
		if instance_exists(o_player)
		{
		move_and_collide(image_xscale*2,0)
		set_state_sprite(s_crow_move,image_speed,image_index)
		
		}
	break
	
	case "idle":
		if instance_exists(o_player)
		{
		set_state_sprite(s_crow_move,image_speed,image_index)
		
		}
		break
	case "fly":
			hspeed=image_xscale
			vspeed=-1
		
}
if(y<0)
{
instance_destroy()
}

		
