health=health_
if health<=0
instance_destroy()

switch (state)
{
	case "move":
		#region Move State
		if o_input.right_input
		{
			move_and_collide(4,0)
			image_xscale = 1;
			audio_play_sound(a_footsteps,100,false)
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if o_input.left_input
		{
			move_and_collide(-4,0)
			image_xscale = -1;
			sprite_index = s_skeleton_run;
			image_speed = 0.6;
		}

		if not o_input.right_input and not o_input.left_input
		{
			sprite_index = s_skeleton_idle;
			image_speed = 0.4;
		}
	
		if o_input.roll_input
		{
			image_index = 0;
			state = "roll";
		}
		
		if o_input.attack_input
		{
			image_index = 0;
			state = "attack one";
		}
		#endregion
		break;
		
	case "roll":
		#region Roll State
		sprite_index = s_skeleton_roll;
		image_speed = 0.6;
	
		if image_xscale == 1 
		{
			move_and_collide(6,0)
			
		}
	
		if image_xscale == -1 
		{
			move_and_collide(-6,0)
		}
		#endregion
		break;
	
	case "attack one":
		#region Attack One State
		set_state_sprite(s_skeleton_attack_one,0.5,image_index)
		create_hitbox(x,y,id,s_skeleton_attack_one_damage,5,3,1)
		if keyboard_check_pressed(vk_lshift) && animation_hit_frame_range(2,4)
		{
		
			state = "attack two";
			image_index=0
			set_state_sprite(s_skeleton_attack_two,0.5,image_index)
		}
		
		#endregion
		break;
		
	case "attack two":
		#region
		create_hitbox(x,y,id,s_skeleton_attack_two_damage,5,3,1)		
		if keyboard_check_pressed(vk_lshift) && animation_hit_frame_range(2,4)
		{
		
			state = "attack three";
			image_index=0
			set_state_sprite(s_skeleton_attack_three,0.5,image_index)
		}
		#endregion
		break;
		
	case "attack three":
	#region
	create_hitbox(x,y,id,s_skeleton_attack_three_damage,5,3,1)
	#endregion
	break;
	
	case "knockback":
		set_state_sprite(s_skeleton_hitstun,0.5,image_index)
		move_and_collide(knockback_speed*-image_xscale,0)
		knockback_speed=approach(knockback_speed,0,0.1)
		if knockback_speed==0
		state="move"		
		
		
}
