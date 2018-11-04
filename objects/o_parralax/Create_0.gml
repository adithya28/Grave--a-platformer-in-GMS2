/// @description Insert description here
// You can write your code in this editor
layer_x("Far_Graves",o_player.x/2.5)
layer_x("Far_Graves_2",o_player.x/1.5)
var layer_graves_near=layer_get_id("Far_Graves")
var layer_graves_far=layer_get_id("Far_Graves_2")

var layer_background=layer_background_get_id(layer_graves_near)
layer_background_blend(layer_background,close_graves)

layer_background=layer_background_get_id(layer_graves_far)
layer_background_blend(layer_background,far_graves)

