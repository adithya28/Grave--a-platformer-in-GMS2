/// @description Insert description here
// You can write your code in this editor

if ds_list_find_index(hit_objects,other)!=-1
{
	ds_list_add(hit_objects,other)
	
}
else
{
if(instance_exists(other)&& other!=creator)
{
	repeat(3)
	instance_create_layer(other.x,other.y-8,"Instances",o_hit_effect)
	screen_shake(2,3)
	
	other.health_-=damage
	if(other.knockback_speed==0)
	{
	other.state="knockback"
	other.knockback_speed=knockback
	}
}
}

if( other.object_index==o_player&&other.health_<=0)
{

	var number=sprite_get_number(s_skeleton_bones)
	for (var i=0;i<number;i++)
	
	{
		var bx=other.x+random_range(-8,8)
		var by=other.y+random_range(-24,8)
		var bone=instance_create_layer(bx,by,"Instances",o_player_bone)
		bone.direction=random(360)
		bone.speed=random_range(3,10)
		bone.image_index=i
		if i==5
		bone.image_angle=130
	}
}

