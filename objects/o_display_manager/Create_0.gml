/// @description Insert description here
// You can write your code in this editor
ideal_width=1024
ideal_height=768
display_width=display_get_width()
display_height=display_get_height()
zoom=floor(display_height/ideal_height)-0.25

window_set_size(ideal_width*zoom,ideal_height*zoom)
display_set_gui_size(ideal_width*zoom,ideal_height*zoom)
surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom)

alarm[0]=1

room_goto_next()