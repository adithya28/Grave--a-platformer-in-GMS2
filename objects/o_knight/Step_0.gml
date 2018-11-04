/// @description Insert description here
// You can write your code in this editor

event_inherited()
if(image_xscale==0)
		image_xscale=1	

if(state!="knockback"&&state!="dead")
{
if(object_proximity(attack_range,100,o_player))
{
	state="walk"
	
}
else if (object_proximity(0,attack_range,o_player)) {
	//target_lock=false
	state="attack"
	}

else
{
	state="idle"
}
}
switch(state)
{
	case "walk":
		if instance_exists(o_player)
		{
		move_and_collide(image_xscale*2,0)
		set_state_sprite(s_knight_walk,image_speed,image_index)
		image_xscale=sign(o_player.x-x)
		}
	break
	
	case "idle":
		if instance_exists(o_player)
		{
		set_state_sprite(s_knight_idle,image_speed,image_index)
		image_xscale=sign(o_player.x-x)
		}
		break
		
	case "attack":
		set_state_sprite(s_knight_attack,0.4,image_index)
		if animation_hit_frame(6)
		create_hitbox(x,y,id,s_knight_hitbox,1,3,1)
		break
		
	case "knockback":
		set_state_sprite(s_knight_stun,0.5,image_index)
		move_and_collide(knockback_speed*-image_xscale,0)
		knockback_speed=approach(knockback_speed,0,0.02)
		show_debug_message(knockback_speed)
	if knockback_speed==0
		state="idle"
		break
		
	
	
	
				
}
if(state="dead")
set_state_sprite(s_knight_die,0.2,image_index)



