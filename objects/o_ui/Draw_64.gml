/// @description Insert description  
// You can write your code in this editor
if(instance_exists(o_player))
{

draw_custom_healthbar(spr_guibars,1,o_player.health_,o_player.max_health,24,24)
draw_sprite_ext(s_dialogue_box,0,82,94,2,0.5,0,c_gray,0.8)
draw_set_font(f_ui)
draw_set_color(c_white)

draw_text(32,64,"Level :"+string(o_player.level))
draw_set_color(c_white)
}

if( !instance_exists(o_player))
{
	room_goto(rm_game_over)
}
else if (o_player.level>=40)
{
	room_goto(rm_win)
}
