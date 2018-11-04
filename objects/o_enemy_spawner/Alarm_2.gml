
// You can write your code in this editor

var enemy_coun=instance_number(o_enemyy_parent)
if(enemy_coun<5)
if(instance_exists(o_player)&&enemy_coun<o_player.level/4)
{
var spawn=choose_enemy(enemy_array)

var new_x=random_range(220,room_width-220)
while(point_distance(new_x,0,o_player.x,0)<200)
{
	new_x=random_range(220,room_width-220)
}

instance_create_layer(new_x,y-1,"Instances",spawn)

}
alarm[2]=room_speed*3

